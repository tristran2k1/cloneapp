import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/hotels/hotels.dart';
import 'package:travo_app/src/local_data/share_preference.dart';
import 'package:travo_app/src/models/booking_room/booking_room.dart';
import 'package:travo_app/src/models/models.dart';

class RoomInfoWidget extends StatelessWidget {
  const RoomInfoWidget({super.key, required this.room});
  final RoomModel room;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      room.name,
                      style: theme.textTheme.titleLarge,
                    ),
                    Gap.h10,
                    Text(
                      "Room Size: null",
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: appTheme.black900,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 60,
                  height: 60,
                  child: CustomImageView(
                    margin: EdgeInsets.zero,
                    url: room.image,
                    fit: BoxFit.cover,
                    radius: BorderRadiusStyle.roundedBorder12,
                  ),
                )
              ],
            ),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              runSpacing: 15,
              children: [
                Text(
                  room.typePrice,
                  style: CustomTextStyles.bodySmall12_1.copyWith(
                    color: appTheme.black900,
                  ),
                ),
                _listServices(room.services != null &&
                    room.services!.services.isNotEmpty),
                const DashDivider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _price(room.price),
                    _chooseBtn(room.id, room.hotel),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _chooseBtn(String id, String hotelId) {
    return CustomElevatedButton(
        text: "Choose",
        contentPadding: const EdgeInsets.symmetric(horizontal: 27),
        buttonStyle: CustomButtonStyles.none,
        decoration: AppDecoration.gradientPrimaryToIndigo
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder28),
        onTap: () {
          final bookingInfo = BookingRoomModel(
            uid: UserPrefs().getUser().id,
            roomId: id,
            hotelId: hotelId,
          );
          HotelCoordinator().showCheckoutScreen(bookingRoom: bookingInfo);
        });
  }

  Widget _price(int price) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("\$$price", style: theme.textTheme.headlineSmall),
        Gap.h10,
        Text(
          "/night",
          style: theme.textTheme.bodySmall
              ?.copyWith(color: appTheme.blueGray90001),
        ),
      ],
    );
  }

  Widget _listServices(bool hasServices) {
    if (!hasServices) {
      return Container();
    }
    return Row(
      children: List.generate(
        room.services!.services.length,
        (index) => Expanded(
            child: HotelServiceIcon(
          text: room.services!.services[index].name,
          svgPath: room.services!.services[index].icon,
        )),
      ),
    );
  }
}
