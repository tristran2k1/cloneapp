import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/common/toast/toast_wrapper.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
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
  final FocusNode _focusSearch = FocusNode();
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
    _focusSearch.dispose();
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
        child: GestureDetector(
            onTap: () {
              _focusSearch.unfocus();
            },
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
                            focusNode: _focusSearch,
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
                        BookingServices(
                          onTapHotels: () =>
                              HomeCoordinator().showHotelsScreen(),
                          onTapFlights: () =>
                              HomeCoordinator().showFlightsScreen(),
                          onTapAll: () {},
                        ),
                        Gap.h20,
                        Row(
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
                        ),
                        BlocBuilder<HomeBloc, HomeState>(
                          builder: (context, state) {
                            return state.maybeWhen(
                              orElse: () => const LoadingWidget(),
                              loadingSuccess: (places) =>
                                  makeRelatedPhotos(places),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
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
