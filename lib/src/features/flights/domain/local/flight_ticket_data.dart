import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/models/flight_ticket/flight_ticket.dart';

List<FlightTicket> flights = [
  FlightTicket(
    name: "Air Asia",
    image: Assets.images.airAsia.path,
    flightNo: 'NNS24',
    departureDate: DateTime.fromMillisecondsSinceEpoch(1697840460),
    arrivalDate: DateTime.fromMicrosecondsSinceEpoch(1697852580),
    price: 215,
  ),
  FlightTicket(
    name: "Citilink",
    image: Assets.images.citilink.path,
    flightNo: 'ALT03',
    departureDate: DateTime.fromMillisecondsSinceEpoch(1697840460),
    arrivalDate: DateTime.fromMicrosecondsSinceEpoch(1697852580),
    price: 249,
  ),
  FlightTicket(
    name: "Garuda",
    image: Assets.images.garudaIndo.path,
    flightNo: 'FLG15',
    departureDate: DateTime.fromMillisecondsSinceEpoch(1697840460),
    arrivalDate: DateTime.fromMicrosecondsSinceEpoch(1697852580),
    price: 253,
  ),
  FlightTicket(
    name: "Batik Air",
    image: Assets.images.batikAir.path,
    flightNo: 'HTL09',
    departureDate: DateTime.fromMillisecondsSinceEpoch(1697840460),
    arrivalDate: DateTime.fromMicrosecondsSinceEpoch(1697852580),
    price: 227,
  ),
  FlightTicket(
    name: "Lion Air",
    image: Assets.images.lionAir.path,
    flightNo: 'LNR14',
    departureDate: DateTime.fromMillisecondsSinceEpoch(1697840460),
    arrivalDate: DateTime.fromMicrosecondsSinceEpoch(1697852580),
    price: 124,
  ),
];
