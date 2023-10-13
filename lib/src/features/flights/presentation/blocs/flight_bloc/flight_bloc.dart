import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travo_app/src/features/flights/domain/local/flight_ticket_data.dart';
import 'package:travo_app/src/models/checkitem/checkitem.dart';
import 'package:travo_app/src/models/models.dart';
import 'package:travo_app/src/utils/utils.dart';

part 'flight_event.dart';
part 'flight_state.dart';
part 'flight_bloc.freezed.dart';

class FlightBloc extends Bloc<FlightEvent, FlightState> {
  FlightBloc() : super(const FlightState.initial()) {
    on<FlightLoadingEvent>(_onFlightLoadingEvent);
    on<FlightFilterEvent>(_onFilterByPriceFlightEvent);
  }
  late List<FlightTicket> _flights;
  int minPrice = 0;
  int maxPrice = 0;

  FutureOr<void> _onFlightLoadingEvent(
      FlightLoadingEvent event, Emitter<FlightState> emit) {
    emit(const FlightState.loadingFlightState());
    _flights = flights;
    minPrice = getMinPrice(_flights.map((e) => e.price).toList());
    maxPrice = getMaxPrice(_flights.map((e) => e.price).toList());
    emit(FlightState.loadingFlightSuccess(flights, minPrice, maxPrice));
  }

  FutureOr<void> _onFilterByPriceFlightEvent(
      FlightFilterEvent event, Emitter<FlightState> emit) {
    List<FlightTicket> filteredFlights = _flights
        .where((flight) =>
            flight.price >= event.priceRange[0] &&
            flight.price <= event.priceRange[1])
        .toList();

    switch (event.type ?? FlightSortByOption.none) {
      case FlightSortByOption.earliestDeparture:
        filteredFlights
            .sort((a, b) => a.departureDate!.compareTo(b.departureDate!));
        break;
      case FlightSortByOption.latestDeparture:
        filteredFlights
            .sort((a, b) => b.departureDate!.compareTo(a.departureDate!));
        break;
      case FlightSortByOption.earliestArrival:
        filteredFlights
            .sort((a, b) => a.arrivalDate!.compareTo(b.arrivalDate!));
        break;
      case FlightSortByOption.latestArrival:
        filteredFlights
            .sort((a, b) => b.arrivalDate!.compareTo(a.arrivalDate!));
        break;
      case FlightSortByOption.shortestDuration:
        break;
      case FlightSortByOption.lowsestPrice:
        filteredFlights.sort((a, b) => a.price.compareTo(b.price));
        break;
      case FlightSortByOption.none:
        break;
      default:
        break;
    }

    emit(FlightState.loadingFlightSuccess(filteredFlights, minPrice, maxPrice));
  }
}
