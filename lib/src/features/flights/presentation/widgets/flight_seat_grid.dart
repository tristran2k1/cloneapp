import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/models/models.dart';

class FlightSeatGrid extends StatelessWidget {
  const FlightSeatGrid({
    super.key,
    required this.selectedSeat,
    required this.bookedList,
    required this.nRows,
    required this.nCols,
    required this.mainAxisSpacing,
    required this.crossAxisSpacing,
    required this.onChanged,
    required this.classseat,
  });

  final SeatData? selectedSeat;
  final List<String> bookedList;
  final int nRows;
  final int nCols;
  final double mainAxisSpacing;
  final double crossAxisSpacing;
  final Function(SeatData) onChanged;
  final String classseat;

  @override
  Widget build(BuildContext context) {
    return AlignedGridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: seats.length,
      crossAxisCount: nCols + 1,
      mainAxisSpacing: mainAxisSpacing,
      crossAxisSpacing: crossAxisSpacing,
      itemBuilder: (_, i) => _item(i),
    );
  }

  Widget _item(int index) {
    if (seats[index].seat.row == -1) {
      return Center(child: Text("${(index - 1) ~/ (nCols + 1) + 1}"));
    }
    return ElevatedButton(
      onPressed: () {
        onChanged(seats[index]);
      },
      style: CustomButtonStyles.none,
      child: Container(
        width: 24,
        height: 35,
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          color: _getBoxColor(index),
          border: Border.all(
            color: appTheme.indigo50,
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: _getPosition(index),
      ),
    );
  }

  Text? _getPosition(int index) {
    if (seats[index].isBooked) {
      return null;
    }
    if (selectedSeat?.seat == seats[index].seat) {
      return Text(seats[index].seat.column,
          style: CustomTextStyles.labelMedium);
    }
    return Text(seats[index].seat.column,
        style: CustomTextStyles.labelMediumBlack900);
  }

  Color _getBoxColor(int index) {
    if (seats[index].isBooked) {
      return appTheme.indigo50;
    }
    if (selectedSeat?.seat == seats[index].seat) {
      return appTheme.blueGray900;
    }
    return Colors.white;
  }

  List<SeatData> get seats => getSeatData(
        seats: bookedList,
        nColumns: nCols,
        nRows: nRows,
        classseat: classseat,
      );
}
