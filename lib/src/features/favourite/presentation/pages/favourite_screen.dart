import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';
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
  List<Place> items = [];
  List<Place> queryResult = [];

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
        body: ListView(children: [
          _header(context),
          _favouriteList(context),
        ]),
      ),
    );
  }

  Widget _header(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        UserAccount user = UserPrefs.I.getUser();
        return HeaderWithSearchBox(
          name: user.name,
          avatar: user.avatar,
          child: _searchBar(context),
        );
      },
    );
  }

  Widget _favouriteList(BuildContext context) {
    return Padding(
      padding: EdgeInsetsConst.hor25,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap.h20,
          BlocBuilder<FavouriteBloc, FavouriteState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const LoadingWidget(),
                loadingSuccess: (places) {
                  if (places.places.isEmpty) {
                    return const Center(child: Text("Data is empty!"));
                  }
                  items = places.places;
                  if (_searchController.text.isEmpty) {
                    queryResult = items;
                  }
                  return makeRelatedPhotos(queryResult);
                },
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _searchBar(BuildContext context) {
    return Padding(
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
        onChanged: (value) {
          filterSearchResults(value);
        },
      ),
    );
  }

  void filterSearchResults(String query) {
    setState(() {
      queryResult = items
          .where(
              (item) => item.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  Widget makeRelatedPhotos(List<Place> places) {
    return MasonryGridView.count(
      crossAxisCount: 2,
      itemCount: places.length,
      mainAxisSpacing: 25,
      crossAxisSpacing: 25,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => PlaceItem(place: places[index]),
    );
  }
}
