import 'package:freezed_annotation/freezed_annotation.dart';

part 'seat_data.freezed.dart';

@freezed
class SeatCoordinator with _$SeatCoordinator {
  const factory SeatCoordinator({
    required int row,
    required String column,
    @Default('Economy') String classseat,
  }) = _SeatCoordinator;

  factory SeatCoordinator.fromString(String seat, String? classseat) =>
      SeatCoordinator(
        row: int.parse(seat.substring(0, 1)),
        column: seat.substring(1, 2),
        classseat: classseat ?? 'Economy',
      );
}

@unfreezed
class SeatData with _$SeatData {
  factory SeatData({
    required SeatCoordinator seat,
    required bool isBooked,
  }) = _SeatData;

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
