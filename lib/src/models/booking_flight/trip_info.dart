class TripInfo {
  final String from;
  final String to;
  final DateTime? date;
  final int passengers;
  final String classSeat;

  TripInfo({
    this.from = "",
    this.to = "",
    this.date,
    this.passengers = 1,
    this.classSeat = "Economy",
  });
}
