import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';

import '../presentation.dart';

class SearchDestinationScreen extends StatefulWidget {
  const SearchDestinationScreen({super.key, this.text});
  final String? text;
  @override
  State<SearchDestinationScreen> createState() =>
      _SearchDestinationScreenState();
}

class _SearchDestinationScreenState extends State<SearchDestinationScreen> {
  final TextEditingController _searchController = TextEditingController();

  final FocusNode _focusSearch = FocusNode();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    if (widget.text != null) {
      _searchController.text = widget.text!;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      body: SafeArea(
        child: AppBarWithTitle(
          leading: CustomBackButton(ctx: context),
          title: "Search your\ndestination",
          child: Form(
            key: _formKey,
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: Sizes.p25),
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              children: [
                Gap.h25,
                Wrap(
                  runSpacing: Sizes.p4,
                  children: [
                    _searchTextField,
                    _searchNearbyDestination,
                    _searchBtn(context),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  CustomElevatedButton _searchBtn(BuildContext context) {
    return CustomElevatedButton(
        text: "Search",
        buttonStyle: CustomButtonStyles.none,
        decoration: AppDecoration.gradientPrimaryToIndigo.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder28,
        ),
        onTap: () {
          if (_formKey.currentState!.validate()) {
            return Navigator.pop(context, _searchController.text);
          }
        });
  }

  Widget get _searchNearbyDestination => TextButton(
        onPressed: () {},
        child: Row(
          children: [
            const Icon(Icons.my_location, size: 16, color: Colors.black),
            Gap.w15,
            Text("Search nearby destination", style: theme.textTheme.bodyMedium)
          ],
        ),
      );

  Widget get _searchTextField => CustomFloatingTextField(
        controller: _searchController,
        focusNode: _focusSearch,
        labelStyle: CustomTextStyles.bodyMediumGray700,
        hintText: context.tr("search_destination"),
        labelText: context.tr("search_destination"),
        prefixIcon: CustomImageView(svgPath: Assets.images.searchIcon),
        prefixConstraints: const BoxConstraints(),
      );
}
