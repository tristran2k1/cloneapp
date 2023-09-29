import 'package:freezed_annotation/freezed_annotation.dart';

part 'property.freezed.dart';

@unfreezed
class Property with _$Property {
  factory Property({
    @Default('') String name,
    @Default(false) bool isAvailable,
  }) = _Property;
}
