import 'package:travo_app/src/models/models.dart';

class BookedRoomInfo {
  final String hotelName;
  final String roomName;
  final String roomImage;
  final BookingRoomModel bookingInfo;

  BookedRoomInfo({
    required this.hotelName,
    required this.roomName,
    required this.roomImage,
    required this.bookingInfo,
  });
}
