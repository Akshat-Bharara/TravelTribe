// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gemini_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GeminiEvent {
  Group get group => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Group group) generateItinerary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Group group)? generateItinerary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Group group)? generateItinerary,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenerateItinerary value) generateItinerary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenerateItinerary value)? generateItinerary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenerateItinerary value)? generateItinerary,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of GeminiEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeminiEventCopyWith<GeminiEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeminiEventCopyWith<$Res> {
  factory $GeminiEventCopyWith(
          GeminiEvent value, $Res Function(GeminiEvent) then) =
      _$GeminiEventCopyWithImpl<$Res, GeminiEvent>;
  @useResult
  $Res call({Group group});

  $GroupCopyWith<$Res> get group;
}

/// @nodoc
class _$GeminiEventCopyWithImpl<$Res, $Val extends GeminiEvent>
    implements $GeminiEventCopyWith<$Res> {
  _$GeminiEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GeminiEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
  }) {
    return _then(_value.copyWith(
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group,
    ) as $Val);
  }

  /// Create a copy of GeminiEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupCopyWith<$Res> get group {
    return $GroupCopyWith<$Res>(_value.group, (value) {
      return _then(_value.copyWith(group: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GenerateItineraryImplCopyWith<$Res>
    implements $GeminiEventCopyWith<$Res> {
  factory _$$GenerateItineraryImplCopyWith(_$GenerateItineraryImpl value,
          $Res Function(_$GenerateItineraryImpl) then) =
      __$$GenerateItineraryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Group group});

  @override
  $GroupCopyWith<$Res> get group;
}

/// @nodoc
class __$$GenerateItineraryImplCopyWithImpl<$Res>
    extends _$GeminiEventCopyWithImpl<$Res, _$GenerateItineraryImpl>
    implements _$$GenerateItineraryImplCopyWith<$Res> {
  __$$GenerateItineraryImplCopyWithImpl(_$GenerateItineraryImpl _value,
      $Res Function(_$GenerateItineraryImpl) _then)
      : super(_value, _then);

  /// Create a copy of GeminiEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
  }) {
    return _then(_$GenerateItineraryImpl(
      null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group,
    ));
  }
}

/// @nodoc

class _$GenerateItineraryImpl implements _GenerateItinerary {
  const _$GenerateItineraryImpl(this.group);

  @override
  final Group group;

  @override
  String toString() {
    return 'GeminiEvent.generateItinerary(group: $group)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateItineraryImpl &&
            (identical(other.group, group) || other.group == group));
  }

  @override
  int get hashCode => Object.hash(runtimeType, group);

  /// Create a copy of GeminiEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateItineraryImplCopyWith<_$GenerateItineraryImpl> get copyWith =>
      __$$GenerateItineraryImplCopyWithImpl<_$GenerateItineraryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Group group) generateItinerary,
  }) {
    return generateItinerary(group);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Group group)? generateItinerary,
  }) {
    return generateItinerary?.call(group);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Group group)? generateItinerary,
    required TResult orElse(),
  }) {
    if (generateItinerary != null) {
      return generateItinerary(group);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenerateItinerary value) generateItinerary,
  }) {
    return generateItinerary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenerateItinerary value)? generateItinerary,
  }) {
    return generateItinerary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenerateItinerary value)? generateItinerary,
    required TResult orElse(),
  }) {
    if (generateItinerary != null) {
      return generateItinerary(this);
    }
    return orElse();
  }
}

abstract class _GenerateItinerary implements GeminiEvent {
  const factory _GenerateItinerary(final Group group) = _$GenerateItineraryImpl;

  @override
  Group get group;

  /// Create a copy of GeminiEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenerateItineraryImplCopyWith<_$GenerateItineraryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GeminiState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String data) loaded,
    required TResult Function(AppFailure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String data)? loaded,
    TResult? Function(AppFailure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String data)? loaded,
    TResult Function(AppFailure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeminiInitial value) initial,
    required TResult Function(GeminiLoading value) loading,
    required TResult Function(GeminiLoaded value) loaded,
    required TResult Function(GeminiError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeminiInitial value)? initial,
    TResult? Function(GeminiLoading value)? loading,
    TResult? Function(GeminiLoaded value)? loaded,
    TResult? Function(GeminiError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeminiInitial value)? initial,
    TResult Function(GeminiLoading value)? loading,
    TResult Function(GeminiLoaded value)? loaded,
    TResult Function(GeminiError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeminiStateCopyWith<$Res> {
  factory $GeminiStateCopyWith(
          GeminiState value, $Res Function(GeminiState) then) =
      _$GeminiStateCopyWithImpl<$Res, GeminiState>;
}

/// @nodoc
class _$GeminiStateCopyWithImpl<$Res, $Val extends GeminiState>
    implements $GeminiStateCopyWith<$Res> {
  _$GeminiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GeminiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GeminiInitialImplCopyWith<$Res> {
  factory _$$GeminiInitialImplCopyWith(
          _$GeminiInitialImpl value, $Res Function(_$GeminiInitialImpl) then) =
      __$$GeminiInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GeminiInitialImplCopyWithImpl<$Res>
    extends _$GeminiStateCopyWithImpl<$Res, _$GeminiInitialImpl>
    implements _$$GeminiInitialImplCopyWith<$Res> {
  __$$GeminiInitialImplCopyWithImpl(
      _$GeminiInitialImpl _value, $Res Function(_$GeminiInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of GeminiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GeminiInitialImpl implements GeminiInitial {
  const _$GeminiInitialImpl();

  @override
  String toString() {
    return 'GeminiState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GeminiInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String data) loaded,
    required TResult Function(AppFailure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String data)? loaded,
    TResult? Function(AppFailure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String data)? loaded,
    TResult Function(AppFailure failure)? error,
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
    required TResult Function(GeminiInitial value) initial,
    required TResult Function(GeminiLoading value) loading,
    required TResult Function(GeminiLoaded value) loaded,
    required TResult Function(GeminiError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeminiInitial value)? initial,
    TResult? Function(GeminiLoading value)? loading,
    TResult? Function(GeminiLoaded value)? loaded,
    TResult? Function(GeminiError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeminiInitial value)? initial,
    TResult Function(GeminiLoading value)? loading,
    TResult Function(GeminiLoaded value)? loaded,
    TResult Function(GeminiError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GeminiInitial implements GeminiState {
  const factory GeminiInitial() = _$GeminiInitialImpl;
}

/// @nodoc
abstract class _$$GeminiLoadingImplCopyWith<$Res> {
  factory _$$GeminiLoadingImplCopyWith(
          _$GeminiLoadingImpl value, $Res Function(_$GeminiLoadingImpl) then) =
      __$$GeminiLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GeminiLoadingImplCopyWithImpl<$Res>
    extends _$GeminiStateCopyWithImpl<$Res, _$GeminiLoadingImpl>
    implements _$$GeminiLoadingImplCopyWith<$Res> {
  __$$GeminiLoadingImplCopyWithImpl(
      _$GeminiLoadingImpl _value, $Res Function(_$GeminiLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of GeminiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GeminiLoadingImpl implements GeminiLoading {
  const _$GeminiLoadingImpl();

  @override
  String toString() {
    return 'GeminiState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GeminiLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String data) loaded,
    required TResult Function(AppFailure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String data)? loaded,
    TResult? Function(AppFailure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String data)? loaded,
    TResult Function(AppFailure failure)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeminiInitial value) initial,
    required TResult Function(GeminiLoading value) loading,
    required TResult Function(GeminiLoaded value) loaded,
    required TResult Function(GeminiError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeminiInitial value)? initial,
    TResult? Function(GeminiLoading value)? loading,
    TResult? Function(GeminiLoaded value)? loaded,
    TResult? Function(GeminiError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeminiInitial value)? initial,
    TResult Function(GeminiLoading value)? loading,
    TResult Function(GeminiLoaded value)? loaded,
    TResult Function(GeminiError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GeminiLoading implements GeminiState {
  const factory GeminiLoading() = _$GeminiLoadingImpl;
}

/// @nodoc
abstract class _$$GeminiLoadedImplCopyWith<$Res> {
  factory _$$GeminiLoadedImplCopyWith(
          _$GeminiLoadedImpl value, $Res Function(_$GeminiLoadedImpl) then) =
      __$$GeminiLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String data});
}

/// @nodoc
class __$$GeminiLoadedImplCopyWithImpl<$Res>
    extends _$GeminiStateCopyWithImpl<$Res, _$GeminiLoadedImpl>
    implements _$$GeminiLoadedImplCopyWith<$Res> {
  __$$GeminiLoadedImplCopyWithImpl(
      _$GeminiLoadedImpl _value, $Res Function(_$GeminiLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GeminiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GeminiLoadedImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GeminiLoadedImpl implements GeminiLoaded {
  const _$GeminiLoadedImpl(this.data);

  @override
  final String data;

  @override
  String toString() {
    return 'GeminiState.loaded(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeminiLoadedImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of GeminiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeminiLoadedImplCopyWith<_$GeminiLoadedImpl> get copyWith =>
      __$$GeminiLoadedImplCopyWithImpl<_$GeminiLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String data) loaded,
    required TResult Function(AppFailure failure) error,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String data)? loaded,
    TResult? Function(AppFailure failure)? error,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String data)? loaded,
    TResult Function(AppFailure failure)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeminiInitial value) initial,
    required TResult Function(GeminiLoading value) loading,
    required TResult Function(GeminiLoaded value) loaded,
    required TResult Function(GeminiError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeminiInitial value)? initial,
    TResult? Function(GeminiLoading value)? loading,
    TResult? Function(GeminiLoaded value)? loaded,
    TResult? Function(GeminiError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeminiInitial value)? initial,
    TResult Function(GeminiLoading value)? loading,
    TResult Function(GeminiLoaded value)? loaded,
    TResult Function(GeminiError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class GeminiLoaded implements GeminiState {
  const factory GeminiLoaded(final String data) = _$GeminiLoadedImpl;

  String get data;

  /// Create a copy of GeminiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeminiLoadedImplCopyWith<_$GeminiLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GeminiErrorImplCopyWith<$Res> {
  factory _$$GeminiErrorImplCopyWith(
          _$GeminiErrorImpl value, $Res Function(_$GeminiErrorImpl) then) =
      __$$GeminiErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppFailure failure});

  $AppFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$GeminiErrorImplCopyWithImpl<$Res>
    extends _$GeminiStateCopyWithImpl<$Res, _$GeminiErrorImpl>
    implements _$$GeminiErrorImplCopyWith<$Res> {
  __$$GeminiErrorImplCopyWithImpl(
      _$GeminiErrorImpl _value, $Res Function(_$GeminiErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of GeminiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$GeminiErrorImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppFailure,
    ));
  }

  /// Create a copy of GeminiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppFailureCopyWith<$Res> get failure {
    return $AppFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$GeminiErrorImpl implements GeminiError {
  const _$GeminiErrorImpl(this.failure);

  @override
  final AppFailure failure;

  @override
  String toString() {
    return 'GeminiState.error(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeminiErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of GeminiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeminiErrorImplCopyWith<_$GeminiErrorImpl> get copyWith =>
      __$$GeminiErrorImplCopyWithImpl<_$GeminiErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String data) loaded,
    required TResult Function(AppFailure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String data)? loaded,
    TResult? Function(AppFailure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String data)? loaded,
    TResult Function(AppFailure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeminiInitial value) initial,
    required TResult Function(GeminiLoading value) loading,
    required TResult Function(GeminiLoaded value) loaded,
    required TResult Function(GeminiError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeminiInitial value)? initial,
    TResult? Function(GeminiLoading value)? loading,
    TResult? Function(GeminiLoaded value)? loaded,
    TResult? Function(GeminiError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeminiInitial value)? initial,
    TResult Function(GeminiLoading value)? loading,
    TResult Function(GeminiLoaded value)? loaded,
    TResult Function(GeminiError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GeminiError implements GeminiState {
  const factory GeminiError(final AppFailure failure) = _$GeminiErrorImpl;

  AppFailure get failure;

  /// Create a copy of GeminiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeminiErrorImplCopyWith<_$GeminiErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
