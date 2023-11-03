// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'localization_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocalizationEvent {
  BuildContext get context => throw _privateConstructorUsedError;
  bool get isEnglish => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, bool isEnglish)
        changeLanguageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, bool isEnglish)?
        changeLanguageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, bool isEnglish)? changeLanguageEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeLanguageEvent value) changeLanguageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeLanguageEvent value)? changeLanguageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeLanguageEvent value)? changeLanguageEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalizationEventCopyWith<LocalizationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizationEventCopyWith<$Res> {
  factory $LocalizationEventCopyWith(
          LocalizationEvent value, $Res Function(LocalizationEvent) then) =
      _$LocalizationEventCopyWithImpl<$Res, LocalizationEvent>;
  @useResult
  $Res call({BuildContext context, bool isEnglish});
}

/// @nodoc
class _$LocalizationEventCopyWithImpl<$Res, $Val extends LocalizationEvent>
    implements $LocalizationEventCopyWith<$Res> {
  _$LocalizationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? isEnglish = null,
  }) {
    return _then(_value.copyWith(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      isEnglish: null == isEnglish
          ? _value.isEnglish
          : isEnglish // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeLanguageEventCopyWith<$Res>
    implements $LocalizationEventCopyWith<$Res> {
  factory _$$ChangeLanguageEventCopyWith(_$ChangeLanguageEvent value,
          $Res Function(_$ChangeLanguageEvent) then) =
      __$$ChangeLanguageEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context, bool isEnglish});
}

/// @nodoc
class __$$ChangeLanguageEventCopyWithImpl<$Res>
    extends _$LocalizationEventCopyWithImpl<$Res, _$ChangeLanguageEvent>
    implements _$$ChangeLanguageEventCopyWith<$Res> {
  __$$ChangeLanguageEventCopyWithImpl(
      _$ChangeLanguageEvent _value, $Res Function(_$ChangeLanguageEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? isEnglish = null,
  }) {
    return _then(_$ChangeLanguageEvent(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      null == isEnglish
          ? _value.isEnglish
          : isEnglish // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeLanguageEvent implements ChangeLanguageEvent {
  const _$ChangeLanguageEvent(this.context, this.isEnglish);

  @override
  final BuildContext context;
  @override
  final bool isEnglish;

  @override
  String toString() {
    return 'LocalizationEvent.changeLanguageEvent(context: $context, isEnglish: $isEnglish)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeLanguageEvent &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.isEnglish, isEnglish) ||
                other.isEnglish == isEnglish));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, isEnglish);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeLanguageEventCopyWith<_$ChangeLanguageEvent> get copyWith =>
      __$$ChangeLanguageEventCopyWithImpl<_$ChangeLanguageEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, bool isEnglish)
        changeLanguageEvent,
  }) {
    return changeLanguageEvent(context, isEnglish);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, bool isEnglish)?
        changeLanguageEvent,
  }) {
    return changeLanguageEvent?.call(context, isEnglish);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, bool isEnglish)? changeLanguageEvent,
    required TResult orElse(),
  }) {
    if (changeLanguageEvent != null) {
      return changeLanguageEvent(context, isEnglish);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeLanguageEvent value) changeLanguageEvent,
  }) {
    return changeLanguageEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeLanguageEvent value)? changeLanguageEvent,
  }) {
    return changeLanguageEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeLanguageEvent value)? changeLanguageEvent,
    required TResult orElse(),
  }) {
    if (changeLanguageEvent != null) {
      return changeLanguageEvent(this);
    }
    return orElse();
  }
}

abstract class ChangeLanguageEvent implements LocalizationEvent {
  const factory ChangeLanguageEvent(
      final BuildContext context, final bool isEnglish) = _$ChangeLanguageEvent;

  @override
  BuildContext get context;
  @override
  bool get isEnglish;
  @override
  @JsonKey(ignore: true)
  _$$ChangeLanguageEventCopyWith<_$ChangeLanguageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocalizationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function() waiting,
    required TResult Function() changedLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? waiting,
    TResult? Function()? changedLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? waiting,
    TResult Function()? changedLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalizationStateInitial value) initial,
    required TResult Function(LocalizationStateError value) error,
    required TResult Function(LocalizationStateWaiting value) waiting,
    required TResult Function(LocalizationStateChangedLanguage value)
        changedLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalizationStateInitial value)? initial,
    TResult? Function(LocalizationStateError value)? error,
    TResult? Function(LocalizationStateWaiting value)? waiting,
    TResult? Function(LocalizationStateChangedLanguage value)? changedLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalizationStateInitial value)? initial,
    TResult Function(LocalizationStateError value)? error,
    TResult Function(LocalizationStateWaiting value)? waiting,
    TResult Function(LocalizationStateChangedLanguage value)? changedLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizationStateCopyWith<$Res> {
  factory $LocalizationStateCopyWith(
          LocalizationState value, $Res Function(LocalizationState) then) =
      _$LocalizationStateCopyWithImpl<$Res, LocalizationState>;
}

/// @nodoc
class _$LocalizationStateCopyWithImpl<$Res, $Val extends LocalizationState>
    implements $LocalizationStateCopyWith<$Res> {
  _$LocalizationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LocalizationStateInitialCopyWith<$Res> {
  factory _$$LocalizationStateInitialCopyWith(_$LocalizationStateInitial value,
          $Res Function(_$LocalizationStateInitial) then) =
      __$$LocalizationStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocalizationStateInitialCopyWithImpl<$Res>
    extends _$LocalizationStateCopyWithImpl<$Res, _$LocalizationStateInitial>
    implements _$$LocalizationStateInitialCopyWith<$Res> {
  __$$LocalizationStateInitialCopyWithImpl(_$LocalizationStateInitial _value,
      $Res Function(_$LocalizationStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LocalizationStateInitial implements LocalizationStateInitial {
  const _$LocalizationStateInitial();

  @override
  String toString() {
    return 'LocalizationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalizationStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function() waiting,
    required TResult Function() changedLanguage,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? waiting,
    TResult? Function()? changedLanguage,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? waiting,
    TResult Function()? changedLanguage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalizationStateInitial value) initial,
    required TResult Function(LocalizationStateError value) error,
    required TResult Function(LocalizationStateWaiting value) waiting,
    required TResult Function(LocalizationStateChangedLanguage value)
        changedLanguage,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalizationStateInitial value)? initial,
    TResult? Function(LocalizationStateError value)? error,
    TResult? Function(LocalizationStateWaiting value)? waiting,
    TResult? Function(LocalizationStateChangedLanguage value)? changedLanguage,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalizationStateInitial value)? initial,
    TResult Function(LocalizationStateError value)? error,
    TResult Function(LocalizationStateWaiting value)? waiting,
    TResult Function(LocalizationStateChangedLanguage value)? changedLanguage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LocalizationStateInitial implements LocalizationState {
  const factory LocalizationStateInitial() = _$LocalizationStateInitial;
}

/// @nodoc
abstract class _$$LocalizationStateErrorCopyWith<$Res> {
  factory _$$LocalizationStateErrorCopyWith(_$LocalizationStateError value,
          $Res Function(_$LocalizationStateError) then) =
      __$$LocalizationStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LocalizationStateErrorCopyWithImpl<$Res>
    extends _$LocalizationStateCopyWithImpl<$Res, _$LocalizationStateError>
    implements _$$LocalizationStateErrorCopyWith<$Res> {
  __$$LocalizationStateErrorCopyWithImpl(_$LocalizationStateError _value,
      $Res Function(_$LocalizationStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LocalizationStateError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocalizationStateError implements LocalizationStateError {
  const _$LocalizationStateError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LocalizationState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalizationStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalizationStateErrorCopyWith<_$LocalizationStateError> get copyWith =>
      __$$LocalizationStateErrorCopyWithImpl<_$LocalizationStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function() waiting,
    required TResult Function() changedLanguage,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? waiting,
    TResult? Function()? changedLanguage,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? waiting,
    TResult Function()? changedLanguage,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalizationStateInitial value) initial,
    required TResult Function(LocalizationStateError value) error,
    required TResult Function(LocalizationStateWaiting value) waiting,
    required TResult Function(LocalizationStateChangedLanguage value)
        changedLanguage,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalizationStateInitial value)? initial,
    TResult? Function(LocalizationStateError value)? error,
    TResult? Function(LocalizationStateWaiting value)? waiting,
    TResult? Function(LocalizationStateChangedLanguage value)? changedLanguage,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalizationStateInitial value)? initial,
    TResult Function(LocalizationStateError value)? error,
    TResult Function(LocalizationStateWaiting value)? waiting,
    TResult Function(LocalizationStateChangedLanguage value)? changedLanguage,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LocalizationStateError implements LocalizationState {
  const factory LocalizationStateError(final String message) =
      _$LocalizationStateError;

  String get message;
  @JsonKey(ignore: true)
  _$$LocalizationStateErrorCopyWith<_$LocalizationStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocalizationStateWaitingCopyWith<$Res> {
  factory _$$LocalizationStateWaitingCopyWith(_$LocalizationStateWaiting value,
          $Res Function(_$LocalizationStateWaiting) then) =
      __$$LocalizationStateWaitingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocalizationStateWaitingCopyWithImpl<$Res>
    extends _$LocalizationStateCopyWithImpl<$Res, _$LocalizationStateWaiting>
    implements _$$LocalizationStateWaitingCopyWith<$Res> {
  __$$LocalizationStateWaitingCopyWithImpl(_$LocalizationStateWaiting _value,
      $Res Function(_$LocalizationStateWaiting) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LocalizationStateWaiting implements LocalizationStateWaiting {
  const _$LocalizationStateWaiting();

  @override
  String toString() {
    return 'LocalizationState.waiting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalizationStateWaiting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function() waiting,
    required TResult Function() changedLanguage,
  }) {
    return waiting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? waiting,
    TResult? Function()? changedLanguage,
  }) {
    return waiting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? waiting,
    TResult Function()? changedLanguage,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalizationStateInitial value) initial,
    required TResult Function(LocalizationStateError value) error,
    required TResult Function(LocalizationStateWaiting value) waiting,
    required TResult Function(LocalizationStateChangedLanguage value)
        changedLanguage,
  }) {
    return waiting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalizationStateInitial value)? initial,
    TResult? Function(LocalizationStateError value)? error,
    TResult? Function(LocalizationStateWaiting value)? waiting,
    TResult? Function(LocalizationStateChangedLanguage value)? changedLanguage,
  }) {
    return waiting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalizationStateInitial value)? initial,
    TResult Function(LocalizationStateError value)? error,
    TResult Function(LocalizationStateWaiting value)? waiting,
    TResult Function(LocalizationStateChangedLanguage value)? changedLanguage,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(this);
    }
    return orElse();
  }
}

abstract class LocalizationStateWaiting implements LocalizationState {
  const factory LocalizationStateWaiting() = _$LocalizationStateWaiting;
}

/// @nodoc
abstract class _$$LocalizationStateChangedLanguageCopyWith<$Res> {
  factory _$$LocalizationStateChangedLanguageCopyWith(
          _$LocalizationStateChangedLanguage value,
          $Res Function(_$LocalizationStateChangedLanguage) then) =
      __$$LocalizationStateChangedLanguageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocalizationStateChangedLanguageCopyWithImpl<$Res>
    extends _$LocalizationStateCopyWithImpl<$Res,
        _$LocalizationStateChangedLanguage>
    implements _$$LocalizationStateChangedLanguageCopyWith<$Res> {
  __$$LocalizationStateChangedLanguageCopyWithImpl(
      _$LocalizationStateChangedLanguage _value,
      $Res Function(_$LocalizationStateChangedLanguage) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LocalizationStateChangedLanguage
    implements LocalizationStateChangedLanguage {
  const _$LocalizationStateChangedLanguage();

  @override
  String toString() {
    return 'LocalizationState.changedLanguage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalizationStateChangedLanguage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function() waiting,
    required TResult Function() changedLanguage,
  }) {
    return changedLanguage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? waiting,
    TResult? Function()? changedLanguage,
  }) {
    return changedLanguage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? waiting,
    TResult Function()? changedLanguage,
    required TResult orElse(),
  }) {
    if (changedLanguage != null) {
      return changedLanguage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalizationStateInitial value) initial,
    required TResult Function(LocalizationStateError value) error,
    required TResult Function(LocalizationStateWaiting value) waiting,
    required TResult Function(LocalizationStateChangedLanguage value)
        changedLanguage,
  }) {
    return changedLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalizationStateInitial value)? initial,
    TResult? Function(LocalizationStateError value)? error,
    TResult? Function(LocalizationStateWaiting value)? waiting,
    TResult? Function(LocalizationStateChangedLanguage value)? changedLanguage,
  }) {
    return changedLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalizationStateInitial value)? initial,
    TResult Function(LocalizationStateError value)? error,
    TResult Function(LocalizationStateWaiting value)? waiting,
    TResult Function(LocalizationStateChangedLanguage value)? changedLanguage,
    required TResult orElse(),
  }) {
    if (changedLanguage != null) {
      return changedLanguage(this);
    }
    return orElse();
  }
}

abstract class LocalizationStateChangedLanguage implements LocalizationState {
  const factory LocalizationStateChangedLanguage() =
      _$LocalizationStateChangedLanguage;
}
