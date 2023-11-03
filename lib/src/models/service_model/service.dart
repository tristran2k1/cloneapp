import 'package:travo_app/src/constants/constants.dart';

class ServiceModel {
  final String id;
  final String name;
  final String icon;

  ServiceModel({required this.id, this.name = "", this.icon = ""});

  factory ServiceModel.fromID(String? id) {
    if (id == null || id == "") {
      return ServiceModel(id: '');
    }
    final name = getNameFromService(id);
    final icon = getIconFromService(id);
    return ServiceModel(id: id, name: name, icon: icon);
  }
}

class ServiceList {
  final List<ServiceModel> services;

  ServiceList({required this.services});

  factory ServiceList.fromStringList(List<dynamic>? serviceslist) {
    if (serviceslist == null || serviceslist.isEmpty) {
      return ServiceList(services: []);
    }
    ServiceList services = ServiceList(services: []);

    for (String ser in serviceslist) {
      services.services.add(ServiceModel.fromID(ser));
    }
    return services;
  }
}

String getIconFromService(String id) {
  switch (id) {
    case '24_HOURS_FRONT_DESK':
      return Assets.images.frontDeskIcon;
    case 'CURRENCY_EXCHANGE':
      return Assets.images.currencyExchangeIcon;
    case 'FREE_BREAKFAST':
      return Assets.images.freeBreakfastIcon;
    case 'FREE_WIFI':
      return Assets.images.wifiIcon;
    case 'NON_REFUNDABLE':
      return Assets.images.nonRefundableIcon;
    case 'NON_SMOKING':
      return Assets.images.nonSmokingIcon;
    case 'RESTAURENT':
      return Assets.images.restaurantIcon;

    default:
      return "";
  }
}

String getNameFromService(String id) {
  switch (id) {
    case '24_HOURS_FRONT_DESK':
      return "24h Front Desk";
    case 'CURRENCY_EXCHANGE':
      return "Currency Exchange";
    case 'FREE_BREAKFAST':
      return "Free Breakfast";
    case 'FREE_WIFI':
      return "Free Wifi";
    case 'NON_REFUNDABLE':
      return "Non Refundable";
    case 'NON_SMOKING':
      return "Non Smoking";
    case 'RESTAURENT':
      return "Restaurent";

    default:
      return id;
  }
}
