import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_info.freezed.dart';

@unfreezed
class TripInfo with _$TripInfo {
  factory TripInfo({
    @Default("") String from,
    @Default("") String to,
    DateTime? date,
    @Default(1) int passengers,
    @Default("Economy") String classSeat,
  }) = _TripInfo;
}
