import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:latlong2/latlong.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/common/toast/toast_wrapper.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:sliding_up_panel2/sliding_up_panel2.dart';
import 'package:travo_app/src/features/hotels/router/coordinator.dart';

import '../bloc/bloc.dart';
import '../widgets/widgets.dart';
import 'package:travo_app/src/models/hotel/hotel.dart';

class DetailHotelScreen extends StatefulWidget {
  const DetailHotelScreen({super.key, required this.id});
  final String id;
  @override
  State<DetailHotelScreen> createState() => _DetailHotelScreenState();
}

class _DetailHotelScreenState extends State<DetailHotelScreen> {
  late final ScrollController scrollController;
  late final PanelController panelController;
  late final PageController pageController;

  final double _initFabHeight = 120.0;
  double _fabHeight = 0;
  double _panelHeightOpen = 0;
  double _panelHeightClosed = 95.0;

  @override
  void initState() {
    pageController = PageController(keepPage: true);
    scrollController = ScrollController();
    panelController = PanelController();
    super.initState();

    _fabHeight = _initFabHeight;
  }

  @override
  Widget build(BuildContext context) {
    _panelHeightOpen = MediaQuery.of(context).size.height * .6;
    _panelHeightClosed = MediaQuery.of(context).size.height * .05;
    return BlocProvider(
      create: (context) =>
          HotelDetailBloc()..add(HotelDetailLoadingEvent(widget.id)),
      child: BlocListener<HotelDetailBloc, HotelDetailState>(
        listener: (_, htstate) {
          if (htstate is HotelDetailError) {
            return XToast.error(htstate.message);
          }
        },
        child: SafeArea(
          child: Scaffold(
              extendBodyBehindAppBar: true,
              appBar: AppBar(
                leading: CustomBackButton(ctx: context),
                toolbarHeight: kToolbarHeight + customToolbarHeight,
                elevation: 0,
                backgroundColor: Colors.transparent,
              ),
              backgroundColor: theme.colorScheme.background,
              body: BlocBuilder<HotelDetailBloc, HotelDetailState>(
                  builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const LoadingWidget(),
                  loadingSuccess: (hotel) {
                    final pages = List.generate(
                      3,
                      (index) => CustomImageView(
                        url: hotel.image,
                        fit: BoxFit.fitHeight,
                        margin: EdgeInsets.zero,
                      ),
                    );
                    return Stack(children: [
                      SlidingUpPanel(
                        defaultPanelState: PanelState.OPEN,
                        color: theme.colorScheme.background,
                        disableDraggableOnScrolling: false,
                        header: LineHeader(ctx: context),
                        minHeight: _panelHeightClosed,
                        maxHeight: _panelHeightOpen,
                        parallaxEnabled: true,
                        parallaxOffset: .1,
                        controller: panelController,
                        scrollController: scrollController,
                        borderRadius: BorderRadiusStyle.customBorderT12,
                        body: PageView.builder(
                          controller: pageController,
                          itemBuilder: (context, index) =>
                              pages[index % pages.length],
                        ),
                        panelBuilder: () => ListView(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            physics:
                                PanelScrollPhysics(controller: panelController),
                            controller: scrollController,
                            children: [
                              Gap.h60,
                              _nameAndPrice(hotel.price, hotel.name),
                              Gap.h15,
                              _showLocation(hotel.location),
                              Gap.h15,
                              const DashDivider(),
                              Gap.h15,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  _ratinginfo(hotel),
                                  TextButton(
                                    child: Text(
                                      context.tr('see_all'),
                                      style: CustomTextStyles
                                          .titleSmallIndigo40001_1,
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                              Gap.h15,
                              const DashDivider(),
                              Gap.h15,
                              _title("Information"),
                              Gap.h15,
                              _longText(hotel.information),
                              Gap.h15,
                              _listServices(),
                              Gap.h15,
                              _title("Location"),
                              Gap.h15,
                              _longText(hotel.locationDescription),
                              Gap.h15,
                              // _map(),
                              _selectBtn(),
                              Gap.h15,
                            ]),
                        onPanelSlide: (double pos) => setState(() {
                          _fabHeight =
                              pos * (_panelHeightOpen - _panelHeightClosed) +
                                  _initFabHeight;
                        }),
                      ),
                      _paginationDot(pages),
                    ]);
                  },
                );
              })),
        ),
      ),
    );
  }

  Positioned _paginationDot(List<CustomImageView> pages) {
    return Positioned.fill(
      bottom: _fabHeight - _panelHeightClosed - 8,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: SmoothPageIndicator(
            controller: pageController,
            count: pages.length,
            effect: ExpandingDotsEffect(
                spacing: 5,
                activeDotColor: appTheme.whiteA700,
                dotColor: appTheme.blueGray100,
                dotHeight: 5,
                dotWidth: 5)),
      ),
    );
  }

  CustomElevatedButton _selectBtn() {
    return CustomElevatedButton(
      text: "Select Room",
      buttonStyle: CustomButtonStyles.none,
      decoration: AppDecoration.gradientPrimaryToIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder28,
      ),
      onTap: () => HotelCoordinator().showSelectRoomScreen(id: widget.id),
    );
  }

  Text _title(String title) {
    return Text(title, style: CustomTextStyles.titleMediumBluegray90018);
  }

  Widget _listServices() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HotelServiceIcon(
            text: "Restaurant", svgPath: Assets.images.restaurantIcon),
        HotelServiceIcon(text: "Wifi", svgPath: Assets.images.wifiIcon),
        HotelServiceIcon(
            text: "Currency Exchange",
            svgPath: Assets.images.currencyExchangeIcon),
        HotelServiceIcon(
            text: "24-hour Front Desk", svgPath: Assets.images.frontDeskIcon),
        HotelServiceIcon(text: "More", svgPath: Assets.images.moreIcon),
      ],
    );
  }

  Widget _showLocation(String location) {
    return Row(
      children: [
        Icon(
          Entypo.location,
          color: appTheme.red300,
          size: 16,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: RichText(
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              text: location,
              style: CustomTextStyles.bodySmall12_1.copyWith(
                color: appTheme.black900,
              ),
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }

  Widget _nameAndPrice(int price, String name) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(name, style: theme.textTheme.titleLarge),
        RichText(
          overflow: TextOverflow.ellipsis,
          text: TextSpan(
            children: [
              TextSpan(
                text: "\$$price",
                style: theme.textTheme.headlineSmall,
              ),
              TextSpan(
                text: "/night",
                style: theme.textTheme.labelSmall!
                    .copyWith(color: appTheme.black900),
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }

  Text _longText(String text) {
    return Text(
      text,
      maxLines: 10,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.justify,
      style: theme.textTheme.bodyMedium!.copyWith(height: 1.79),
    );
  }

  Widget _ratinginfo(Hotel hotel) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(FontAwesome.star, size: 16, color: theme.colorScheme.onSurface),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "${hotel.rating}/5 ",
                  style: theme.textTheme.bodyMedium,
                ),
                TextSpan(
                  text: "(${hotel.totalReviews} reviews)",
                  style: CustomTextStyles.bodyMediumGray500,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }

  Widget _map() {
    return FlutterMap(
      options: MapOptions(
        center: LatLng(40.441589, -80.010948),
        zoom: 13,
        maxZoom: 15,
      ),
      children: [
        TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/102/{x}/{y}.png'),
        MarkerLayer(markers: [
          Marker(
              point: LatLng(40.441753, -80.011476),
              builder: (ctx) => const Icon(
                    Icons.location_on,
                    color: Colors.blue,
                    size: 20.0,
                  ),
              height: 60),
        ]),
      ],
    );
  }
}
