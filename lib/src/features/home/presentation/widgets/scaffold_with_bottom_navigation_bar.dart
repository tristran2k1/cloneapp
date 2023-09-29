import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/models/models.dart';

class ScaffoldWithBottomNavigationBar extends StatefulWidget {
  const ScaffoldWithBottomNavigationBar(
      {super.key, required this.child, required this.location});

  final Widget child;
  final String location;

  @override
  State<ScaffoldWithBottomNavigationBar> createState() =>
      _ScaffoldWithBottomNavigationBarState();
}

class _ScaffoldWithBottomNavigationBarState
    extends State<ScaffoldWithBottomNavigationBar> {
  List<HomeNavigationItem> items = [];

  @override
  void initState() {
    items = HomeNavigationItems.items;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: SalomonBottomBar(
          currentIndex: locationToTabIndex(GoRouterState.of(context).location),
          margin: const EdgeInsets.all(20),
          onTap: (index) {
            context.goNamed(items[index].route.name);
          },
          items: List.generate(items.length, (index) {
            final item = items[index];
            return SalomonBottomBarItem(
              icon: Icon(item.icon),
              title: Text(item.label),
              selectedColor: appTheme.indigo40001,
              unselectedColor: appTheme.indigo40001.withOpacity(0.5),
            );
          })),
    );
  }

  int locationToTabIndex(String location) {
    final index = HomeNavigationItems.items
        .indexWhere((t) => location.startsWith(t.path));
    // if index not found (-1), return 0
    return index < 0 ? 0 : index;
  }
}
