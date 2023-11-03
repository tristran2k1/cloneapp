import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/common/toast/toast_wrapper.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/features.dart';
import 'package:travo_app/src/local_data/share_preference.dart';
import 'package:travo_app/src/models/place/place.dart';
import 'package:travo_app/src/models/user/user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      create: (context) => HomeBloc()..add(const Loading()),
      child: BlocListener<HomeBloc, HomeState>(
        listener: (_, hstate) {
          if (hstate is HomeError) {
            return XToast.error(hstate.message);
          }
        },
        child: Scaffold(
          backgroundColor: theme.colorScheme.background,
          body: RefreshIndicator(
            onRefresh: () async {
              // context.read<HomeBloc>().add(const Loading());
            },
            child: ListView(
              children: [
                _header(context),
                Padding(
                  padding: EdgeInsetsConst.hor25,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap.h20,
                      _bookingServices(context),
                      Gap.h20,
                      _destinationTitle(context),
                      _placeList(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
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

  Widget _placeList(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      return state.maybeWhen(
        orElse: () => const LoadingWidget(),
        loadingSuccess: (places) {
          if (places.places.isEmpty) {
            return const Center(
              child: Text("Data is empty!"),
            );
          }
          items = places.places;
          if (_searchController.text.isEmpty) {
            queryResult = items;
          }
          return makeRelatedPhotos(queryResult);
        },
      );
    });
  }

  Widget _destinationTitle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          context.tr('popular_destinations'),
          style: CustomTextStyles.titleMediumBluegray90018,
        ),
        TextButton(
          child: Text(
            context.tr('see_all'),
            style: CustomTextStyles.titleSmallIndigo40001_1,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _bookingServices(BuildContext context) {
    return BookingServices(
      onTapHotels: () => HomeCoordinator().showHotelsScreen(),
      onTapFlights: () => HomeCoordinator().showFlightsScreen(),
      onTapAll: () {},
    );
  }
}
