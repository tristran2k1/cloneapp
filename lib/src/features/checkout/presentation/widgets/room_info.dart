import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/hotels/hotels.dart';
import 'package:travo_app/src/models/models.dart';

class RoomInfo extends StatelessWidget {
  const RoomInfo({super.key, required this.room});
  final RoomModel room;
  @override
  Widget build(BuildContext context) {
    return Container(
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
                _listServices(),
                const DashDivider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _roomPrice(room.price),
                    _totalRoom(room.total),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Text _totalRoom(int total) {
    if (total > 1) {
      return Text(
        "$total rooms",
        style: theme.textTheme.bodySmall!.copyWith(color: appTheme.black900),
      );
    }
    return Text(
      "$total room",
      style: theme.textTheme.bodySmall!.copyWith(color: appTheme.black900),
    );
  }

  RichText _roomPrice(int price) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "\$$price",
            style: theme.textTheme.headlineSmall,
          ),
          TextSpan(
            text: "/night",
            style:
                theme.textTheme.labelSmall!.copyWith(color: appTheme.black900),
          ),
        ],
      ),
      textAlign: TextAlign.left,
    );
  }

  Widget _listServices() {
    if (room.services == null) {
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
