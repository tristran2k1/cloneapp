import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/features.dart';
import 'package:travo_app/src/local_data/share_preference.dart';
import 'package:travo_app/src/models/models.dart';

import '../bloc/payment_bloc.dart';
import '../widgets/widgets.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          PaymentBloc()..add(PaymentLoadingEvent(UserPrefs.I.getUser().id)),
      child: Scaffold(
        backgroundColor: theme.colorScheme.background,
        body: ListView(
          children: [
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                UserAccount user = UserPrefs.I.getUser();
                return HeaderWithSearchBox(
                    name: user.name, avatar: user.avatar, child: Container());
              },
            ),
            BlocBuilder<PaymentBloc, PaymentState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const LoadingWidget(),
                  loadingSuccess: (rooms) {
                    if (rooms.isEmpty) {
                      return const Center(child: Text("Data is empty!"));
                    }
                    return Padding(
                      padding: EdgeInsetsConst.hor25,
                      child: SingleChildScrollView(
                        child: Column(
                          children: List.generate(
                            rooms.length,
                            (index) => Column(
                              children: [
                                const SizedBox(height: 15),
                                _buildList(context, rooms[index]),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildList(BuildContext context, BookedRoomInfo info) {
    return ElevatedButton(
        style: CustomButtonStyles.none.copyWith(
          minimumSize: const MaterialStatePropertyAll(Size.zero),
          padding: const MaterialStatePropertyAll(EdgeInsets.zero),
        ),
        onPressed: () {
          showDialog<void>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              insetPadding: const EdgeInsets.symmetric(horizontal: 25),
              contentPadding: EdgeInsets.zero,
              content: _content(context, info),
              actions: <Widget>[
                Center(
                  child: TextButton(
                    child: const Text('Done'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            ),
          );
        },
        child: BookedRoomOverviewItem(info: info));
  }

  Widget _content(BuildContext context, BookedRoomInfo info) {
    return SizedBox(
      height: 400,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              BookedRoomOverviewItem(info: info),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const DashDivider(),
                      Gap.h20,
                      _contact(info),
                      Gap.h10,
                      const DashDivider(),
                      Gap.h20,
                      _totalPrice(info.bookingInfo.price),
                      Gap.h10,
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget _totalPrice(int price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Total price',
            style:
                theme.textTheme.titleSmall!.copyWith(color: appTheme.gray700)),
        _text('\$$price'),
      ],
    );
  }

  Widget _contact(BookedRoomInfo info) {
    final contacts = info.bookingInfo.contacts;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Contacts',
            style:
                theme.textTheme.titleSmall!.copyWith(color: appTheme.gray700)),
        Gap.h10,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
                contacts.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Column(
                        children: [
                          _contactName(index, contacts[index].name),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Gap.h8,
                                  _text('Phone'),
                                  Gap.h8,
                                  _text('Email'),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Gap.h8,
                                  _text(contacts[index].phone),
                                  Gap.h8,
                                  _text(contacts[index].email),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )),
          ),
        )
      ],
    );
  }

  Widget _contactName(int index, String name) {
    return Row(
      children: [
        Container(
            margin: const EdgeInsets.only(right: 5),
            height: 24,
            width: 24,
            decoration: AppDecoration.fillWhiteA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder4,
                color: appTheme.black900.withOpacity(0.3)),
            child: Center(
              child: Text((index + 1).toString(),
                  style: CustomTextStyles.labelMediumBlack900),
            )),
        Gap.w10,
        _text(name),
      ],
    );
  }

  Text _text(String text) {
    return Text(text,
        style: theme.textTheme.bodySmall!.copyWith(color: appTheme.gray700));
  }
}
