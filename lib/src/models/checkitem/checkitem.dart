class CheckItem {
  final String icon;
  final String name;
  bool isAvailable;
  CheckItem({this.icon = "", this.name = "", this.isAvailable = false});

  void changeAvailable(bool value) {
    isAvailable = value;
  }
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
