import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:sliding_up_panel2/sliding_up_panel2.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/common/toast/toast_wrapper.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/hotels/hotels.dart';
import 'package:travo_app/src/models/checkitem/checkitem.dart';

import '../bloc/bloc.dart';

class HotelsScreen extends StatefulWidget {
  const HotelsScreen({super.key});

  @override
  State<HotelsScreen> createState() => _HotelsScreenState();
}

class _HotelsScreenState extends State<HotelsScreen> {
  final PanelController _panelController = PanelController();
  final ScrollController _scrollController = ScrollController();

  final MinMaxModel _changeValueModel = MinMaxModel();
  double _panelHeightOpen = 0;
  HotelSortByOption? _type;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    _panelHeightOpen = screenSize.height * .6;

    return BlocProvider(
      create: (context) =>
          HotelBloc()..add(const HotelEvent.hotelLoadingEvent()),
      child: BlocListener<HotelBloc, HotelState>(
        listener: (_, hotelstate) {
          if (hotelstate is ErrorHotelState) {
            return XToast.error(hotelstate.message);
          }
          if (hotelstate is LoadingHotelSuccess) {
            if (_changeValueModel.lower == null) {
              _changeValueModel.setLower(hotelstate.minPrice.toDouble());
              _changeValueModel.setUpper(hotelstate.maxPrice.toDouble());
            }
          }
        },
        child: Scaffold(
          backgroundColor: theme.colorScheme.background,
          body:
              // RefreshIndicator(
              //   onRefresh: () async {
              //     print("object");
              //     context
              //         .read<HotelBloc>()
              //         .add(const HotelEvent.hotelLoadingEvent());
              //   },
              //   child:
              SafeArea(
            child: SlidingUpPanel(
              backdropEnabled: true,
              defaultPanelState: PanelState.CLOSED,
              color: theme.colorScheme.background,
              disableDraggableOnScrolling: false,
              header: LineHeader(ctx: context),
              minHeight: 0,
              maxHeight: _panelHeightOpen,
              controller: _panelController,
              scrollController: _scrollController,
              borderRadius: BorderRadiusStyle.customBorderT28,
              panelBuilder: () => _slidingPanel(),
              body: Stack(
                children: [
                  _appbar(context),
                  _hotelList(context, screenSize),
                ],
              ),
            ),
          ),
        ),
      ),
      // ),
    );
  }

  SingleChildScrollView _slidingPanel() {
    return SingleChildScrollView(
      physics: PanelScrollPhysics(controller: _panelController),
      controller: _scrollController,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap.h60,
            Text("Choose Your Filter", style: theme.textTheme.headlineSmall),
            Gap.h32,
            Text("Budget",
                style: theme.textTheme.titleMedium!
                    .copyWith(color: appTheme.black900)),
            Gap.h25,
            BlocBuilder<HotelBloc, HotelState>(
              builder: (context, state) {
                return state.maybeWhen(
                    orElse: () => const LoadingWidget(),
                    loadingHotelSuccess: (_, minPrice, maxPrice) {
                      return _budgetSlider(minPrice, maxPrice);
                    });
              },
            ),
            Gap.h25,
            Text("Hotel Class",
                style: theme.textTheme.titleMedium!
                    .copyWith(color: appTheme.black900)),
            Gap.h25,
            _hotelClassBar(),
            Gap.h25,
            FilterField(
                icon: Assets.images.wifiOrange,
                title: 'Facilities',
                ontap: () => HotelCoordinator().selectFacilities()),
            Gap.h20,
            FilterField(
                icon: Assets.images.propertyRed,
                title: 'Property Type',
                ontap: () => HotelCoordinator().selectPropertyType()),
            Gap.h20,
            FilterField(
                icon: Assets.images.sortbyDecreaseGreen,
                title: 'Sort By',
                ontap: () async {
                  final sortType = await HotelCoordinator().showSortbyScreen();
                  if (sortType != null) {
                    _type = sortType;
                  }
                }),
            Gap.h20,
            _applyBtn(context),
            Gap.h15,
            _resetBtn(context),
            Gap.h20,
          ],
        ),
      ),
    );
  }

  CustomElevatedButton _resetBtn(BuildContext context) {
    return CustomElevatedButton(
        text: "Reset",
        buttonStyle: CustomButtonStyles.none,
        buttonTextStyle:
            theme.textTheme.titleMedium!.copyWith(color: appTheme.indigo40001),
        decoration: AppDecoration.fillindigo40001.copyWith(
          color: appTheme.indigo40001.withOpacity(0.1),
          borderRadius: BorderRadiusStyle.roundedBorder28,
        ),
        onTap: () {
          // context.read<HotelBloc>().add(const HotelEvent.resetEvent());
          _scrollController.position.minScrollExtent;
          _panelController.close();
        });
  }

  Widget _applyBtn(BuildContext context) {
    return BlocBuilder<HotelBloc, HotelState>(
      builder: (context, state) {
        return state.maybeWhen(
            orElse: () => const LoadingWidget(),
            loadingHotelSuccess: (_, minPrice, maxPrice) {
              return CustomElevatedButton(
                  text: "Apply",
                  buttonStyle: CustomButtonStyles.none,
                  decoration: AppDecoration.gradientPrimaryToIndigo.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder28,
                  ),
                  onTap: () {
                    BlocProvider<HotelBloc>.value(
                      value: context.read<HotelBloc>()
                        ..add(HotelEvent.filterByPrice(
                            _changeValueModel.lower?.toInt() ?? minPrice,
                            _changeValueModel.upper?.toInt() ?? maxPrice,
                            _type ?? HotelSortByOption.none)),
                    );
                    _scrollController.position.minScrollExtent;
                    _panelController.close();
                  });
            });
      },
    );
  }

  RatingBar _hotelClassBar() {
    return RatingBar.builder(
      initialRating: 3,
      minRating: 1,
      direction: Axis.horizontal,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 8),
      wrapAlignment: WrapAlignment.spaceBetween,
      itemBuilder: (context, _) => Icon(
        FontAwesome.star,
        color: appTheme.marigold,
      ),
      unratedColor: appTheme.indigo50,
      onRatingUpdate: (rating) {},
    );
  }

  Widget _budgetSlider(int min, int max) {
    return FlutterSlider(
      values: [
        _changeValueModel.lower ?? min.toDouble(),
        _changeValueModel.upper ?? max.toDouble()
      ],
      rangeSlider: true,
      max: max.toDouble(),
      min: min.toDouble(),
      handlerAnimation: const FlutterSliderHandlerAnimation(
          curve: Curves.elasticOut,
          reverseCurve: Curves.bounceIn,
          duration: Duration(milliseconds: 500),
          scale: 1.5),
      handler: _sliderBtn(),
      rightHandler: _sliderBtn(),
      trackBar: FlutterSliderTrackBar(
        inactiveTrackBar: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: appTheme.gray300,
        ),
        activeTrackBar: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: appTheme.indigo40001),
      ),
      tooltip: FlutterSliderTooltip(
          format: (value) => "\$${value.replaceAll('.0', '')}",
          positionOffset: FlutterSliderTooltipPositionOffset(top: -20),
          textStyle: theme.textTheme.bodyMedium,
          alwaysShowTooltip: true,
          boxStyle: const FlutterSliderTooltipBox(
            decoration: BoxDecoration(color: Colors.transparent),
          )),
      onDragging: (handlerIndex, lowerValue, upperValue) {
        _changeValueModel.setLower(lowerValue);
        _changeValueModel.setUpper(upperValue);
      },
    );
  }

  FlutterSliderHandler _sliderBtn() {
    return FlutterSliderHandler(
      decoration: const BoxDecoration(),
      child: Container(
          decoration:
              AppDecoration.fillindigo40001.copyWith(shape: BoxShape.circle),
          padding: const EdgeInsets.all(5),
          child: Icon(
            Icons.pause,
            size: 24,
            color: appTheme.whiteA700,
          )),
    );
  }

  Widget _appbar(BuildContext context) {
    return AppBarWithTitle(
      leading: CustomBackButton(ctx: context),
      title: "Hotels",
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Row(
            children: [
              ActionButton(
                icon: Assets.images.searchIcon,
                onPressed: () => HotelCoordinator().showSearchScreen(),
              ),
              ActionButton(
                icon: Assets.images.hamburgerIcon,
                onPressed: () => _panelController.open(),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _hotelList(BuildContext context, Size screenSize) {
    return BlocBuilder<HotelBloc, HotelState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const LoadingWidget(),
          loadingHotelSuccess: (hotels, _, __) => Positioned(
            top: tBarHeight,
            child: SizedBox(
              width: screenSize.width,
              height: screenSize.height - tBarHeight,
              child: ListView(
                  padding: EdgeInsetsConst.hor25,
                  shrinkWrap: true,
                  children: List.generate(
                      hotels.hotels.length,
                      (index) => HotelProfileItemWidget(
                            hotel: hotels.hotels[index],
                          ))),
            ),
          ),
        );
      },
    );
  }
}

class MinMaxModel with ChangeNotifier {
  double? lowerValue;
  double? upperValue;
  MinMaxModel({this.lowerValue, this.upperValue});
  double? get lower => lowerValue;
  double? get upper => upperValue;
  void setLower(double value) {
    lowerValue = value;
    notifyListeners();
  }

  void setUpper(double value) {
    upperValue = value;
    notifyListeners();
  }
}
