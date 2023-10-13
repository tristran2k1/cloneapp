import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sliding_up_panel2/sliding_up_panel2.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/features.dart';
import 'package:travo_app/src/features/hotels/hotels.dart';
import 'package:travo_app/src/models/checkitem/checkitem.dart';
import 'package:travo_app/src/models/models.dart';

import '../blocs/blocs.dart';

class ResultFlightScreen extends StatefulWidget {
  const ResultFlightScreen({super.key, required this.bookingInfo});
  final BookingFlightModel bookingInfo;

  @override
  State<ResultFlightScreen> createState() => _ResultFlightScreenState();
}

class _ResultFlightScreenState extends State<ResultFlightScreen> {
  final PanelController _panelController = PanelController();
  final ScrollController _scrollController = ScrollController();

  double? _lowerBudgetValue;
  double? _upperBudgetValue;
  double _lowerTransitValue = 0;
  double _upperTransitValue = 24;
  double _panelHeightOpen = 0;
  FlightSortByOption? _type;

  @override
  Widget build(BuildContext context) {
    _panelHeightOpen = MediaQuery.of(context).size.height * .6;
    return BlocProvider(
      create: (context) =>
          FlightBloc()..add(const FlightEvent.flightLoadingEvent()),
      child: Scaffold(
        backgroundColor: theme.colorScheme.background,
        body: SafeArea(
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
              AppBarWithSubtitleForFlightBooking(
                titleChild: const FlightBookingTitle(),
                leading: CustomBackButton(ctx: context),
                tripInfo: widget.bookingInfo.trip ?? TripInfo(),
                actions: [
                  ActionButton(
                    icon: Assets.images.hamburgerIcon,
                    onPressed: () => _panelController.open(),
                  ),
                ],
              ),
              Positioned(
                top: 163,
                child: BlocBuilder<FlightBloc, FlightState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                        orElse: () => const LoadingWidget(),
                        loadingFlightSuccess: (flights, _, __) {
                          return SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height:
                                MediaQuery.of(context).size.height - 163 - 20,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: List.generate(
                                    flights.length,
                                    (index) => FlightBookingTicket(
                                      ticket: flights[index],
                                      bookingInfo: widget.bookingInfo,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        });
                  },
                ),
              ),
            ],
          ),
        )),
      ),
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
            Text("Transit Duration",
                style: theme.textTheme.titleMedium!
                    .copyWith(color: appTheme.black900)),
            Gap.h25,
            SliderFilter(
                min: 0,
                max: 24,
                values: [_lowerTransitValue, _upperTransitValue],
                onChanged: (min, max) {
                  setState(() {
                    _lowerTransitValue = min;
                    _upperTransitValue = max;
                  });
                },
                format: (value) => "${value.replaceAll('.0', '')} h"),
            Gap.h12,
            Text("Budget",
                style: theme.textTheme.titleMedium!
                    .copyWith(color: appTheme.black900)),
            Gap.h25,
            BlocBuilder<FlightBloc, FlightState>(
              builder: (context, state) {
                return state.maybeWhen(
                    orElse: () => const LoadingWidget(),
                    loadingFlightSuccess: (_, minPrice, maxPrice) {
                      return SliderFilter(
                          min: minPrice.toDouble(),
                          max: maxPrice.toDouble(),
                          values: [
                            _lowerBudgetValue ?? minPrice.toDouble(),
                            _upperBudgetValue ?? maxPrice.toDouble()
                          ],
                          onChanged: (min, max) {
                            setState(() {
                              _lowerBudgetValue = min;
                              _upperBudgetValue = max;
                            });
                          },
                          format: (value) => "\$${value.replaceAll('.0', '')}");
                    });
              },
            ),
            Gap.h12,
            FilterField(
                icon: Assets.images.facilityRed,
                title: 'Facilities',
                ontap: () => FlightCoordinator().selectFacilities()),
            Gap.h20,
            FilterField(
                icon: Assets.images.sortbyDecreaseGreen,
                title: 'Sort By',
                ontap: () async {
                  final sortType = await FlightCoordinator().showSortbyScreen();
                  if (sortType != null) {
                    _type = sortType;
                  }
                }),
            Gap.h20,
            _applyBtn(context),
            Gap.h15,
            _resetBtn(),
            Gap.h20,
          ],
        ),
      ),
    );
  }

  Widget _applyBtn(BuildContext context) {
    return BlocBuilder<FlightBloc, FlightState>(builder: (context, state) {
      return state.maybeWhen(
        orElse: () => const LoadingWidget(),
        loadingFlightSuccess: (_, minPrice, maxPrice) {
          return CustomElevatedButton(
              text: "Apply",
              buttonStyle: CustomButtonStyles.none,
              decoration: AppDecoration.gradientPrimaryToIndigo.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder28,
              ),
              onTap: () {
                BlocProvider<FlightBloc>.value(
                  value: context.read<FlightBloc>()
                    ..add(FlightEvent.filter(
                      priceRange: [
                        _lowerBudgetValue ?? minPrice.toDouble(),
                        _upperBudgetValue ?? maxPrice.toDouble()
                      ],
                      transitRange: [_lowerTransitValue, _upperTransitValue],
                      type: _type,
                    )),
                );
                _scrollController.position.minScrollExtent;
                _panelController.close();
              });
        },
      );
    });
  }

  CustomElevatedButton _resetBtn() {
    return CustomElevatedButton(
        text: "Reset",
        buttonStyle: CustomButtonStyles.none,
        buttonTextStyle:
            theme.textTheme.titleMedium!.copyWith(color: appTheme.indigo40001),
        decoration: AppDecoration.fillindigo40001.copyWith(
          color: appTheme.indigo40001.withOpacity(0.1),
          borderRadius: BorderRadiusStyle.roundedBorder28,
        ),
        onTap: () {});
  }
}
