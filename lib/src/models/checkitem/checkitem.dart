import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkitem.freezed.dart';

@unfreezed
class CheckItem with _$CheckItem {
  factory CheckItem({
    @Default('') String icon,
    @Default('') String name,
    @Default(false) bool isAvailable,
  }) = _CheckItem;
}

enum HotelSortByOption {
  highestPopularity,
  lowestPrice,
  highestPrice,
  highestRating,
  nearestDistance,
  none
}

enum FlightSortByOption {
  earliestDeparture,
  latestDeparture,
  earliestArrival,
  latestArrival,
  nearestDistance,
  shortestDuration,
  lowsestPrice,
  none
}
