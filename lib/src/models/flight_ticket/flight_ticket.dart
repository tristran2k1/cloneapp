class FlightTicket {
  final String name;
  final String flightNo;
  final String image;
  final DateTime? departureDate;
  final DateTime? arrivalDate;
  final int price;
  final String gate;
  String classSeat;
  String seat;

  FlightTicket({
    this.name = "",
    this.flightNo = "",
    this.image = "",
    this.departureDate,
    this.arrivalDate,
    this.price = 0,
    this.gate = "",
    this.classSeat = "Economy",
    this.seat = "",
  });
}
