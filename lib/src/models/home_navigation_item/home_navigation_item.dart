import 'package:flutter/material.dart';
import 'package:travo_app/src/routes/routes.dart';

class HomeNavigationItem {
  final AppRoute route;
  final String path;
  final IconData icon;
  final String label;
  final Widget view;

  const HomeNavigationItem({
    required this.route,
    required this.path,
    required this.icon,
    required this.label,
    required this.view,
  });
}
