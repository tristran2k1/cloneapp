class SeatCoordinator {
  final int row;
  final String column;
  final String classseat;

  const SeatCoordinator({
    required this.row,
    required this.column,
    this.classseat = 'Economy',
  });

  factory SeatCoordinator.fromString(String seat, String? classseat) =>
      SeatCoordinator(
        row: int.parse(seat.substring(0, 1)),
        column: seat.substring(1, 2),
        classseat: classseat ?? 'Economy',
      );

  @override
  bool operator ==(other) =>
      other is SeatCoordinator &&
      runtimeType == other.runtimeType &&
      row == other.row &&
      column == other.column &&
      classseat == other.classseat;

  @override
  int get hashCode => Object.hash(row, column, classseat);
}

class SeatData {
  final SeatCoordinator seat;
  final bool isBooked;
  SeatData({required this.seat, required this.isBooked});

  factory SeatData.setBooked(String seat, String? classseat) => SeatData(
        seat: SeatCoordinator.fromString(seat, classseat),
        isBooked: true,
      );

  factory SeatData.unsetBooked(String seat, String? classseat) => SeatData(
        seat: SeatCoordinator.fromString(seat, classseat),
        isBooked: false,
      );
  factory SeatData.empty() => SeatData(
        seat: const SeatCoordinator(row: -1, column: ""),
        isBooked: false,
      );
}

List<SeatData> getSeatData({
  required List<String> seats,
  required int nRows,
  required int nColumns,
  required String classseat,
}) {
  List<SeatData> res = [];
  final bookedList =
      seats.map((e) => SeatData.setBooked(e, classseat)).toList();

  bookedList.sort((a, b) {
    final rowComparison = a.seat.row.compareTo(b.seat.row);
    if (rowComparison != 0) {
      return rowComparison;
    }
    return a.seat.column.compareTo(b.seat.column);
  });
  final pivot = (nColumns + 1) ~/ 2;
  var bookId = 0;
  var checkPivot = false;
  for (var i = 1; i <= nRows; i++) {
    for (var j = 0; j < nColumns; j++) {
      if (j == pivot && !checkPivot) {
        res.add(SeatData.empty());
        checkPivot = true;
        j--;
        continue;
      }
      checkPivot = false;
      final coorseat = SeatCoordinator(
          row: i, column: String.fromCharCode(j + 65), classseat: classseat);
      if (bookId < bookedList.length) {
        if (bookedList[bookId].seat != coorseat) {
          res.add(SeatData(seat: coorseat, isBooked: false));
        } else {
          res.add(SeatData(seat: coorseat, isBooked: true));
          bookId++;
        }
      } else {
        res.add(SeatData(seat: coorseat, isBooked: false));
      }
    }
  }
  return res;
}
