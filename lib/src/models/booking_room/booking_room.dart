import 'package:freezed_annotation/freezed_annotation.dart';

import '../models.dart';

part 'booking_room.freezed.dart';

@unfreezed
class BookingRoomModel with _$BookingRoomModel {
  factory BookingRoomModel({
    @Default('') String roomId,
    @Default('') String hotelId,
    @Default('') String uid,
    @Default([]) List<GuestContact> contacts,
    String? promocode,
    @Default('') String checkinDate,
    @Default('') String checkoutDate,
    CreditPayment? credit,
  }) = _BookingRoomModel;

  factory BookingRoomModel.empty() => BookingRoomModel();
}

@unfreezed
class GuestContact with _$GuestContact {
  factory GuestContact({
    @Default('') String name,
    @Default('') String phone,
    @Default('') String email,
  }) = _GuestContact;

  factory GuestContact.empty() => GuestContact();
}
