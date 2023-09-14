import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travo_app/src/routes/routes.dart';

part 'home_navigation_item.freezed.dart';

@freezed
class HomeNavigationItem with _$HomeNavigationItem {
  const factory HomeNavigationItem({
    required final AppRoute route,
    required final String path,
    required final IconData icon,
    required final String label,
    required final Widget view,
  }) = _HomeNavigationItem;
}
