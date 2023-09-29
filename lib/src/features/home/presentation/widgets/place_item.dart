import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/local_data/share_preference.dart';
import 'package:travo_app/src/models/place/place.dart';

import 'place_with_voting.dart';

class PlaceItem extends StatefulWidget {
  const PlaceItem({super.key, required this.place});

  final Place place;

  @override
  State<PlaceItem> createState() => _PlaceItemState();
}

class _PlaceItemState extends State<PlaceItem> {
  final ValueNotifier<bool> _isFavourite = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    _isFavourite.value = widget.place.isFavourite;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillBluegray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Stack(
        children: [
          CustomImageView(
            margin: EdgeInsets.zero,
            url: widget.place.image,
            radius: BorderRadiusStyle.roundedBorder8,
            fit: BoxFit.cover,
          ),
          Positioned(
              top: 0,
              right: 0,
              child: ValueListenableBuilder(
                valueListenable: _isFavourite,
                builder: (_, __, ___) => IconButton(
                  constraints: const BoxConstraints(),
                  icon: Icon(FontAwesome.heart,
                      size: 16,
                      color: _isFavourite.value
                          ? appTheme.red300
                          : appTheme.whiteA700),
                  onPressed: () {
                    _isFavourite.value = !_isFavourite.value;
                    if (!_isFavourite.value) {
                      UserPrefs().removeFavourite(widget.place.id);
                    } else {
                      UserPrefs().addFavourite(widget.place.id);
                    }
                  },
                ),
              )),
          Positioned(
              bottom: 0,
              left: 0,
              child: PlaceWithVoting(
                placeName: widget.place.name,
                rating: widget.place.rating,
              )),
        ],
      ),
    );
  }
}
