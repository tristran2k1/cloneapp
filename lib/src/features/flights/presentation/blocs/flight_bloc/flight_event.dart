part of 'flight_bloc.dart';

@freezed
abstract class FlightEvent with _$FlightEvent {
  const factory FlightEvent.flightLoadingEvent() = FlightLoadingEvent;
  const factory FlightEvent.filter({
    required List<double> priceRange,
    required List<double> transitRange,
    FlightSortByOption? type,
  }) = FlightFilterEvent;
}
