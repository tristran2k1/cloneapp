import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/hotels/hotels.dart';

class AddGuestRoomScreen extends StatefulWidget {
  const AddGuestRoomScreen({super.key, this.guest, this.room});
  final int? guest;
  final int? room;
  @override
  State<AddGuestRoomScreen> createState() => _AddGuestRoomScreenState();
}

class _AddGuestRoomScreenState extends State<AddGuestRoomScreen> {
  late int _noGuest = 1;
  late int _noRoom = 1;

  @override
  void initState() {
    if (widget.guest != null) {
      _noGuest = widget.guest!;
    }
    if (widget.room != null) {
      _noRoom = widget.room!;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: AppBarWithTitle(
        leading: CustomBackButton(ctx: context),
        title: "Add guest and room",
        child: Padding(
          padding: EdgeInsetsConst.hor25,
          child: Column(children: [
            Gap.h20,
            _selectNumGuest(),
            Gap.h20,
            _selectNumRoom(),
            Gap.h20,
            _doneBtn(context),
          ]),
        ),
      )),
    );
  }

  CustomElevatedButton _doneBtn(BuildContext context) {
    return CustomElevatedButton(
        text: "Done",
        buttonStyle: CustomButtonStyles.none,
        decoration: AppDecoration.gradientPrimaryToIndigo.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder28,
        ),
        onTap: () {
          return Navigator.pop(context, {'guest': _noGuest, 'room': _noRoom});
        });
  }

  Widget _selectNumRoom() {
    return SelectNumberWidget(
        icon: Assets.images.bedRed,
        title: "Room",
        value: _noRoom,
        onSubstract: () {
          if (_noRoom > 1) {
            setState(() {
              _noRoom--;
            });
          }
        },
        onAdd: () {
          setState(() {
            _noRoom++;
          });
        });
  }

  Widget _selectNumGuest() {
    return SelectNumberWidget(
        icon: Assets.images.guestOrange,
        title: "Guest",
        value: _noGuest,
        onSubstract: () {
          if (_noGuest > 1) {
            setState(() {
              _noGuest--;
            });
          }
        },
        onAdd: () {
          setState(() {
            _noGuest++;
          });
        });
  }
}
