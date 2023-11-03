import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/hotels/hotels.dart';
import 'package:travo_app/src/models/models.dart';

class HotelProfileItemWidget extends StatefulWidget {
  const HotelProfileItemWidget({super.key, required this.hotel});
  final Hotel hotel;
  @override
  State<HotelProfileItemWidget> createState() => _HotelProfileItemWidgetState();
}

class _HotelProfileItemWidgetState extends State<HotelProfileItemWidget> {
  final ValueNotifier<bool> _isFavourite = ValueNotifier<bool>(false);
  @override
  void initState() {
    super.initState();
    _isFavourite.value = widget.hotel.isFavourite;
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.only(bottom: 20),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: screenSize.height * 0.15,
            margin: const EdgeInsets.only(right: 20),
            decoration: AppDecoration.fillGray400.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL12,
            ),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                _showHotelImage(widget.hotel.image),
                _favouriteIcon(),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0).copyWith(top: 10),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              runSpacing: 10,
              children: [
                Text(
                  widget.hotel.name,
                  style: theme.textTheme.titleLarge,
                ),
                _showLocation(widget.hotel.location),
                _rating(widget.hotel.rating, widget.hotel.totalReviews),
                const DashDivider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _price(widget.hotel.price),
                    _bookRoomBtn(),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  CustomElevatedButton _bookRoomBtn() {
    return CustomElevatedButton(
      contentPadding: const EdgeInsets.symmetric(horizontal: 27),
      text: "Book a room",
      buttonStyle: CustomButtonStyles.none,
      decoration: AppDecoration.gradientPrimaryToIndigo
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder28),
      onTap: () =>
          HotelCoordinator().showDetailHotelsScreen(id: widget.hotel.id),
    );
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

  Widget _rating(double rating, int totalReviews) {
    return Row(
      children: [
        Icon(FontAwesome.star, size: 16, color: theme.colorScheme.onSurface),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$rating ",
                  style: theme.textTheme.bodyMedium,
                ),
                TextSpan(
                  text: "($totalReviews reviews)",
                  style: CustomTextStyles.bodyMediumGray500,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }

  Widget _showLocation(String location) {
    return Row(
      children: [
        Icon(
          Entypo.location,
          color: appTheme.red300,
          size: 16,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: RichText(
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              children: [
                TextSpan(
                  text: location,
                  style: CustomTextStyles.bodySmall12_1
                      .copyWith(color: appTheme.black900),
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }

  Positioned _favouriteIcon() {
    return Positioned(
        top: 0,
        right: 0,
        child: ValueListenableBuilder(
          valueListenable: _isFavourite,
          builder: (_, __, ___) => IconButton(
            constraints: const BoxConstraints(),
            icon: Icon(FontAwesome.heart,
                size: 16,
                color:
                    _isFavourite.value ? appTheme.red300 : appTheme.whiteA700),
            onPressed: () {
              _isFavourite.value = !_isFavourite.value;
            },
          ),
        ));
  }

  CustomImageView _showHotelImage(String urlimage) {
    return CustomImageView(
      margin: EdgeInsets.zero,
      url: urlimage,
      fit: BoxFit.fitWidth,
      width: double.infinity,
      radius: BorderRadiusStyle.customBorderTL12,
      alignment: Alignment.center,
    );
  }
}
