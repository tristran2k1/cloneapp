part of 'flight_bloc.dart';

@freezed
abstract class FlightState with _$FlightState {
  const factory FlightState.initial() = FlightInitial;
  const factory FlightState.loadingFlightState() = LoadingFlightState;
  const factory FlightState.errorFlightState(String message) = ErrorFlightState;
  const factory FlightState.loadingFlightSuccess(
          List<FlightTicket> flights, int minPrice, int maxPrice) =
      LoadingFlightSuccess;
}
