import 'package:freezed_annotation/freezed_annotation.dart';

part 'flight_ticket.freezed.dart';

@unfreezed
class FlightTicket with _$FlightTicket {
  factory FlightTicket({
    @Default("") String name,
    @Default('') String flightNo,
    @Default('') String image, // png path
    DateTime? departureDate,
    DateTime? arrivalDate,
    @Default(0) int price,
    @Default("") String gate,
    @Default("Economy") String classSeat,
    @Default("") String seat,
  }) = _FlightTicket;
}
