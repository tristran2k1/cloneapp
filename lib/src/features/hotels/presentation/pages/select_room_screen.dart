import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/common/toast/toast_wrapper.dart';
import 'package:travo_app/src/constants/constants.dart';

import '../bloc/bloc.dart';
import '../presentation.dart';

class SelectRoomScreen extends StatefulWidget {
  const SelectRoomScreen({super.key, required this.hotelId});
  final String hotelId;
  @override
  State<SelectRoomScreen> createState() => _SelectRoomScreenState();
}

class _SelectRoomScreenState extends State<SelectRoomScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => RoomBloc()..add(RoomLoadingEvent(widget.hotelId)),
      child: BlocListener<RoomBloc, RoomState>(
        listener: (_, rstate) {
          if (rstate is RoomError) {
            return XToast.error(rstate.message);
          }
        },
        child: Scaffold(
          backgroundColor: theme.colorScheme.background,
          body: SafeArea(
            child: Stack(children: [
              AppBarWithTitle(
                title: "Select Room",
                leading: CustomBackButton(ctx: context),
              ),
              BlocBuilder<RoomBloc, RoomState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const LoadingWidget(),
                    loadingSuccess: (rooms) => Positioned(
                      top: tBarHeight,
                      child: SizedBox(
                        width: screenSize.width,
                        height:
                            screenSize.height - tBarHeight - tBarTitleHeight,
                        child: ListView(
                          padding: EdgeInsetsConst.hor25,
                          shrinkWrap: true,
                          children: List.generate(
                              rooms.rooms.length,
                              (index) =>
                                  RoomInfoWidget(room: rooms.rooms[index])),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
