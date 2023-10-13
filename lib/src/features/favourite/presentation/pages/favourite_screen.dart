import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:travo_app/src/features/features.dart';
import 'package:travo_app/src/local_data/share_preference.dart';
import 'package:travo_app/src/models/models.dart';

import '../bloc/favourite_bloc.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  final TextEditingController _searchController = TextEditingController();
  late ScrollController scrollController;
  final double expandedHight = 150.0;
  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    scrollController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavouriteBloc()..add(const LoadingFavouriteEvent()),
      child: Scaffold(
        backgroundColor: theme.colorScheme.background,
        body: ListView(
          children: [
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                UserAccount user = UserPrefs.I.getUser();
                return HeaderWithSearchBox(
                  name: user.name,
                  avatar: user.avatar,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: CustomFloatingTextField(
                      controller: _searchController,
                      focusNode: FocusNode(),
                      labelStyle: CustomTextStyles.bodyMediumGray700,
                      hintText: context.tr("search_destination"),
                      labelText: context.tr("search_destination"),
                      prefixIcon: CustomImageView(
                        svgPath: Assets.images.searchIcon,
                      ),
                      prefixConstraints: const BoxConstraints(),
                    ),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap.h20,
                  BlocBuilder<FavouriteBloc, FavouriteState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () => const LoadingWidget(),
                        loadingSuccess: (places) => makeRelatedPhotos(places),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeRelatedPhotos(PlaceList places) {
    return MasonryGridView.count(
        crossAxisCount: 2,
        itemCount: places.places.length,
        mainAxisSpacing: 25,
        crossAxisSpacing: 25,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => PlaceItem(
              place: places.places[index],
            ));
  }
}
