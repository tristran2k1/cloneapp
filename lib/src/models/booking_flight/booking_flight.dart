import '../models.dart';

class BookingFlightModel {
  final String uid;
  final TripInfo? trip;
  FlightTicket? flight;
  List<GuestContact> contacts;
  String? promocode;
  CreditPayment? credit;

  BookingFlightModel({
    this.uid = "",
    this.trip,
    this.flight,
    this.contacts = const [],
    this.promocode,
    this.credit,
  });

  factory BookingFlightModel.empty() => BookingFlightModel();
}
