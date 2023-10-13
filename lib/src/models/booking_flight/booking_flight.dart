import 'package:freezed_annotation/freezed_annotation.dart';

import '../booking_room/booking_room.dart';
import '../models.dart';

part 'booking_flight.freezed.dart';

@unfreezed
class BookingFlightModel with _$BookingFlightModel {
  factory BookingFlightModel({
    @Default('') String uid,
    TripInfo? trip,
    FlightTicket? flight,
    @Default([]) List<GuestContact> contacts,
    String? promocode,
    CreditPayment? credit,
  }) = _BookingFlightModel;

  factory BookingFlightModel.empty() => BookingFlightModel();
}
