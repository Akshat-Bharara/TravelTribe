// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'groups_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GroupsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupId) fetchGroup,
    required TResult Function(
            String name,
            String destination,
            String description,
            DateTime startDate,
            DateTime endDate,
            String owner)
        createGroup,
    required TResult Function(Group group) updateGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String groupId)? fetchGroup,
    TResult? Function(String name, String destination, String description,
            DateTime startDate, DateTime endDate, String owner)?
        createGroup,
    TResult? Function(Group group)? updateGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId)? fetchGroup,
    TResult Function(String name, String destination, String description,
            DateTime startDate, DateTime endDate, String owner)?
        createGroup,
    TResult Function(Group group)? updateGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchGroup value) fetchGroup,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_UpdateGroup value) updateGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchGroup value)? fetchGroup,
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_UpdateGroup value)? updateGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchGroup value)? fetchGroup,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_UpdateGroup value)? updateGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupsEventCopyWith<$Res> {
  factory $GroupsEventCopyWith(
          GroupsEvent value, $Res Function(GroupsEvent) then) =
      _$GroupsEventCopyWithImpl<$Res, GroupsEvent>;
}

/// @nodoc
class _$GroupsEventCopyWithImpl<$Res, $Val extends GroupsEvent>
    implements $GroupsEventCopyWith<$Res> {
  _$GroupsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchGroupImplCopyWith<$Res> {
  factory _$$FetchGroupImplCopyWith(
          _$FetchGroupImpl value, $Res Function(_$FetchGroupImpl) then) =
      __$$FetchGroupImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String groupId});
}

/// @nodoc
class __$$FetchGroupImplCopyWithImpl<$Res>
    extends _$GroupsEventCopyWithImpl<$Res, _$FetchGroupImpl>
    implements _$$FetchGroupImplCopyWith<$Res> {
  __$$FetchGroupImplCopyWithImpl(
      _$FetchGroupImpl _value, $Res Function(_$FetchGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
  }) {
    return _then(_$FetchGroupImpl(
      null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchGroupImpl implements _FetchGroup {
  const _$FetchGroupImpl(this.groupId);

  @override
  final String groupId;

  @override
  String toString() {
    return 'GroupsEvent.fetchGroup(groupId: $groupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchGroupImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupId);

  /// Create a copy of GroupsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchGroupImplCopyWith<_$FetchGroupImpl> get copyWith =>
      __$$FetchGroupImplCopyWithImpl<_$FetchGroupImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupId) fetchGroup,
    required TResult Function(
            String name,
            String destination,
            String description,
            DateTime startDate,
            DateTime endDate,
            String owner)
        createGroup,
    required TResult Function(Group group) updateGroup,
  }) {
    return fetchGroup(groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String groupId)? fetchGroup,
    TResult? Function(String name, String destination, String description,
            DateTime startDate, DateTime endDate, String owner)?
        createGroup,
    TResult? Function(Group group)? updateGroup,
  }) {
    return fetchGroup?.call(groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId)? fetchGroup,
    TResult Function(String name, String destination, String description,
            DateTime startDate, DateTime endDate, String owner)?
        createGroup,
    TResult Function(Group group)? updateGroup,
    required TResult orElse(),
  }) {
    if (fetchGroup != null) {
      return fetchGroup(groupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchGroup value) fetchGroup,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_UpdateGroup value) updateGroup,
  }) {
    return fetchGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchGroup value)? fetchGroup,
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_UpdateGroup value)? updateGroup,
  }) {
    return fetchGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchGroup value)? fetchGroup,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_UpdateGroup value)? updateGroup,
    required TResult orElse(),
  }) {
    if (fetchGroup != null) {
      return fetchGroup(this);
    }
    return orElse();
  }
}

abstract class _FetchGroup implements GroupsEvent {
  const factory _FetchGroup(final String groupId) = _$FetchGroupImpl;

  String get groupId;

  /// Create a copy of GroupsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchGroupImplCopyWith<_$FetchGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateGroupImplCopyWith<$Res> {
  factory _$$CreateGroupImplCopyWith(
          _$CreateGroupImpl value, $Res Function(_$CreateGroupImpl) then) =
      __$$CreateGroupImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      String destination,
      String description,
      DateTime startDate,
      DateTime endDate,
      String owner});
}

/// @nodoc
class __$$CreateGroupImplCopyWithImpl<$Res>
    extends _$GroupsEventCopyWithImpl<$Res, _$CreateGroupImpl>
    implements _$$CreateGroupImplCopyWith<$Res> {
  __$$CreateGroupImplCopyWithImpl(
      _$CreateGroupImpl _value, $Res Function(_$CreateGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? destination = null,
    Object? description = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? owner = null,
  }) {
    return _then(_$CreateGroupImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateGroupImpl implements _CreateGroup {
  const _$CreateGroupImpl(this.name, this.destination, this.description,
      this.startDate, this.endDate, this.owner);

  @override
  final String name;
  @override
  final String destination;
  @override
  final String description;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String owner;

  @override
  String toString() {
    return 'GroupsEvent.createGroup(name: $name, destination: $destination, description: $description, startDate: $startDate, endDate: $endDate, owner: $owner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateGroupImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.owner, owner) || other.owner == owner));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, destination, description, startDate, endDate, owner);

  /// Create a copy of GroupsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateGroupImplCopyWith<_$CreateGroupImpl> get copyWith =>
      __$$CreateGroupImplCopyWithImpl<_$CreateGroupImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupId) fetchGroup,
    required TResult Function(
            String name,
            String destination,
            String description,
            DateTime startDate,
            DateTime endDate,
            String owner)
        createGroup,
    required TResult Function(Group group) updateGroup,
  }) {
    return createGroup(
        name, destination, description, startDate, endDate, owner);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String groupId)? fetchGroup,
    TResult? Function(String name, String destination, String description,
            DateTime startDate, DateTime endDate, String owner)?
        createGroup,
    TResult? Function(Group group)? updateGroup,
  }) {
    return createGroup?.call(
        name, destination, description, startDate, endDate, owner);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId)? fetchGroup,
    TResult Function(String name, String destination, String description,
            DateTime startDate, DateTime endDate, String owner)?
        createGroup,
    TResult Function(Group group)? updateGroup,
    required TResult orElse(),
  }) {
    if (createGroup != null) {
      return createGroup(
          name, destination, description, startDate, endDate, owner);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchGroup value) fetchGroup,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_UpdateGroup value) updateGroup,
  }) {
    return createGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchGroup value)? fetchGroup,
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_UpdateGroup value)? updateGroup,
  }) {
    return createGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchGroup value)? fetchGroup,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_UpdateGroup value)? updateGroup,
    required TResult orElse(),
  }) {
    if (createGroup != null) {
      return createGroup(this);
    }
    return orElse();
  }
}

abstract class _CreateGroup implements GroupsEvent {
  const factory _CreateGroup(
      final String name,
      final String destination,
      final String description,
      final DateTime startDate,
      final DateTime endDate,
      final String owner) = _$CreateGroupImpl;

  String get name;
  String get destination;
  String get description;
  DateTime get startDate;
  DateTime get endDate;
  String get owner;

  /// Create a copy of GroupsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateGroupImplCopyWith<_$CreateGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateGroupImplCopyWith<$Res> {
  factory _$$UpdateGroupImplCopyWith(
          _$UpdateGroupImpl value, $Res Function(_$UpdateGroupImpl) then) =
      __$$UpdateGroupImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Group group});

  $GroupCopyWith<$Res> get group;
}

/// @nodoc
class __$$UpdateGroupImplCopyWithImpl<$Res>
    extends _$GroupsEventCopyWithImpl<$Res, _$UpdateGroupImpl>
    implements _$$UpdateGroupImplCopyWith<$Res> {
  __$$UpdateGroupImplCopyWithImpl(
      _$UpdateGroupImpl _value, $Res Function(_$UpdateGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
  }) {
    return _then(_$UpdateGroupImpl(
      null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group,
    ));
  }

  /// Create a copy of GroupsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupCopyWith<$Res> get group {
    return $GroupCopyWith<$Res>(_value.group, (value) {
      return _then(_value.copyWith(group: value));
    });
  }
}

/// @nodoc

class _$UpdateGroupImpl implements _UpdateGroup {
  const _$UpdateGroupImpl(this.group);

  @override
  final Group group;

  @override
  String toString() {
    return 'GroupsEvent.updateGroup(group: $group)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateGroupImpl &&
            (identical(other.group, group) || other.group == group));
  }

  @override
  int get hashCode => Object.hash(runtimeType, group);

  /// Create a copy of GroupsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateGroupImplCopyWith<_$UpdateGroupImpl> get copyWith =>
      __$$UpdateGroupImplCopyWithImpl<_$UpdateGroupImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupId) fetchGroup,
    required TResult Function(
            String name,
            String destination,
            String description,
            DateTime startDate,
            DateTime endDate,
            String owner)
        createGroup,
    required TResult Function(Group group) updateGroup,
  }) {
    return updateGroup(group);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String groupId)? fetchGroup,
    TResult? Function(String name, String destination, String description,
            DateTime startDate, DateTime endDate, String owner)?
        createGroup,
    TResult? Function(Group group)? updateGroup,
  }) {
    return updateGroup?.call(group);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId)? fetchGroup,
    TResult Function(String name, String destination, String description,
            DateTime startDate, DateTime endDate, String owner)?
        createGroup,
    TResult Function(Group group)? updateGroup,
    required TResult orElse(),
  }) {
    if (updateGroup != null) {
      return updateGroup(group);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchGroup value) fetchGroup,
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_UpdateGroup value) updateGroup,
  }) {
    return updateGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchGroup value)? fetchGroup,
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_UpdateGroup value)? updateGroup,
  }) {
    return updateGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchGroup value)? fetchGroup,
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_UpdateGroup value)? updateGroup,
    required TResult orElse(),
  }) {
    if (updateGroup != null) {
      return updateGroup(this);
    }
    return orElse();
  }
}

abstract class _UpdateGroup implements GroupsEvent {
  const factory _UpdateGroup(final Group group) = _$UpdateGroupImpl;

  Group get group;

  /// Create a copy of GroupsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateGroupImplCopyWith<_$UpdateGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GroupsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppFailure failure) error,
    required TResult Function(Group group) groupLoaded,
    required TResult Function(Group group) groupCreated,
    required TResult Function(Group group) groupUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppFailure failure)? error,
    TResult? Function(Group group)? groupLoaded,
    TResult? Function(Group group)? groupCreated,
    TResult? Function(Group group)? groupUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppFailure failure)? error,
    TResult Function(Group group)? groupLoaded,
    TResult Function(Group group)? groupCreated,
    TResult Function(Group group)? groupUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GroupsLoading value) loading,
    required TResult Function(GroupsError value) error,
    required TResult Function(Loaded value) groupLoaded,
    required TResult Function(Created value) groupCreated,
    required TResult Function(Updated value) groupUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupsLoading value)? loading,
    TResult? Function(GroupsError value)? error,
    TResult? Function(Loaded value)? groupLoaded,
    TResult? Function(Created value)? groupCreated,
    TResult? Function(Updated value)? groupUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupsLoading value)? loading,
    TResult Function(GroupsError value)? error,
    TResult Function(Loaded value)? groupLoaded,
    TResult Function(Created value)? groupCreated,
    TResult Function(Updated value)? groupUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupsStateCopyWith<$Res> {
  factory $GroupsStateCopyWith(
          GroupsState value, $Res Function(GroupsState) then) =
      _$GroupsStateCopyWithImpl<$Res, GroupsState>;
}

/// @nodoc
class _$GroupsStateCopyWithImpl<$Res, $Val extends GroupsState>
    implements $GroupsStateCopyWith<$Res> {
  _$GroupsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GroupsLoadingImplCopyWith<$Res> {
  factory _$$GroupsLoadingImplCopyWith(
          _$GroupsLoadingImpl value, $Res Function(_$GroupsLoadingImpl) then) =
      __$$GroupsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GroupsLoadingImplCopyWithImpl<$Res>
    extends _$GroupsStateCopyWithImpl<$Res, _$GroupsLoadingImpl>
    implements _$$GroupsLoadingImplCopyWith<$Res> {
  __$$GroupsLoadingImplCopyWithImpl(
      _$GroupsLoadingImpl _value, $Res Function(_$GroupsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GroupsLoadingImpl implements GroupsLoading {
  const _$GroupsLoadingImpl();

  @override
  String toString() {
    return 'GroupsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GroupsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppFailure failure) error,
    required TResult Function(Group group) groupLoaded,
    required TResult Function(Group group) groupCreated,
    required TResult Function(Group group) groupUpdated,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppFailure failure)? error,
    TResult? Function(Group group)? groupLoaded,
    TResult? Function(Group group)? groupCreated,
    TResult? Function(Group group)? groupUpdated,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppFailure failure)? error,
    TResult Function(Group group)? groupLoaded,
    TResult Function(Group group)? groupCreated,
    TResult Function(Group group)? groupUpdated,
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
    required TResult Function(GroupsLoading value) loading,
    required TResult Function(GroupsError value) error,
    required TResult Function(Loaded value) groupLoaded,
    required TResult Function(Created value) groupCreated,
    required TResult Function(Updated value) groupUpdated,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupsLoading value)? loading,
    TResult? Function(GroupsError value)? error,
    TResult? Function(Loaded value)? groupLoaded,
    TResult? Function(Created value)? groupCreated,
    TResult? Function(Updated value)? groupUpdated,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupsLoading value)? loading,
    TResult Function(GroupsError value)? error,
    TResult Function(Loaded value)? groupLoaded,
    TResult Function(Created value)? groupCreated,
    TResult Function(Updated value)? groupUpdated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GroupsLoading implements GroupsState {
  const factory GroupsLoading() = _$GroupsLoadingImpl;
}

/// @nodoc
abstract class _$$GroupsErrorImplCopyWith<$Res> {
  factory _$$GroupsErrorImplCopyWith(
          _$GroupsErrorImpl value, $Res Function(_$GroupsErrorImpl) then) =
      __$$GroupsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppFailure failure});

  $AppFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$GroupsErrorImplCopyWithImpl<$Res>
    extends _$GroupsStateCopyWithImpl<$Res, _$GroupsErrorImpl>
    implements _$$GroupsErrorImplCopyWith<$Res> {
  __$$GroupsErrorImplCopyWithImpl(
      _$GroupsErrorImpl _value, $Res Function(_$GroupsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$GroupsErrorImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppFailure,
    ));
  }

  /// Create a copy of GroupsState
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

class _$GroupsErrorImpl implements GroupsError {
  const _$GroupsErrorImpl(this.failure);

  @override
  final AppFailure failure;

  @override
  String toString() {
    return 'GroupsState.error(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupsErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of GroupsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupsErrorImplCopyWith<_$GroupsErrorImpl> get copyWith =>
      __$$GroupsErrorImplCopyWithImpl<_$GroupsErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppFailure failure) error,
    required TResult Function(Group group) groupLoaded,
    required TResult Function(Group group) groupCreated,
    required TResult Function(Group group) groupUpdated,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppFailure failure)? error,
    TResult? Function(Group group)? groupLoaded,
    TResult? Function(Group group)? groupCreated,
    TResult? Function(Group group)? groupUpdated,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppFailure failure)? error,
    TResult Function(Group group)? groupLoaded,
    TResult Function(Group group)? groupCreated,
    TResult Function(Group group)? groupUpdated,
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
    required TResult Function(GroupsLoading value) loading,
    required TResult Function(GroupsError value) error,
    required TResult Function(Loaded value) groupLoaded,
    required TResult Function(Created value) groupCreated,
    required TResult Function(Updated value) groupUpdated,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupsLoading value)? loading,
    TResult? Function(GroupsError value)? error,
    TResult? Function(Loaded value)? groupLoaded,
    TResult? Function(Created value)? groupCreated,
    TResult? Function(Updated value)? groupUpdated,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupsLoading value)? loading,
    TResult Function(GroupsError value)? error,
    TResult Function(Loaded value)? groupLoaded,
    TResult Function(Created value)? groupCreated,
    TResult Function(Updated value)? groupUpdated,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GroupsError implements GroupsState {
  const factory GroupsError(final AppFailure failure) = _$GroupsErrorImpl;

  AppFailure get failure;

  /// Create a copy of GroupsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupsErrorImplCopyWith<_$GroupsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Group group});

  $GroupCopyWith<$Res> get group;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$GroupsStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
  }) {
    return _then(_$LoadedImpl(
      null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group,
    ));
  }

  /// Create a copy of GroupsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupCopyWith<$Res> get group {
    return $GroupCopyWith<$Res>(_value.group, (value) {
      return _then(_value.copyWith(group: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements Loaded {
  const _$LoadedImpl(this.group);

  @override
  final Group group;

  @override
  String toString() {
    return 'GroupsState.groupLoaded(group: $group)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.group, group) || other.group == group));
  }

  @override
  int get hashCode => Object.hash(runtimeType, group);

  /// Create a copy of GroupsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppFailure failure) error,
    required TResult Function(Group group) groupLoaded,
    required TResult Function(Group group) groupCreated,
    required TResult Function(Group group) groupUpdated,
  }) {
    return groupLoaded(group);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppFailure failure)? error,
    TResult? Function(Group group)? groupLoaded,
    TResult? Function(Group group)? groupCreated,
    TResult? Function(Group group)? groupUpdated,
  }) {
    return groupLoaded?.call(group);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppFailure failure)? error,
    TResult Function(Group group)? groupLoaded,
    TResult Function(Group group)? groupCreated,
    TResult Function(Group group)? groupUpdated,
    required TResult orElse(),
  }) {
    if (groupLoaded != null) {
      return groupLoaded(group);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GroupsLoading value) loading,
    required TResult Function(GroupsError value) error,
    required TResult Function(Loaded value) groupLoaded,
    required TResult Function(Created value) groupCreated,
    required TResult Function(Updated value) groupUpdated,
  }) {
    return groupLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupsLoading value)? loading,
    TResult? Function(GroupsError value)? error,
    TResult? Function(Loaded value)? groupLoaded,
    TResult? Function(Created value)? groupCreated,
    TResult? Function(Updated value)? groupUpdated,
  }) {
    return groupLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupsLoading value)? loading,
    TResult Function(GroupsError value)? error,
    TResult Function(Loaded value)? groupLoaded,
    TResult Function(Created value)? groupCreated,
    TResult Function(Updated value)? groupUpdated,
    required TResult orElse(),
  }) {
    if (groupLoaded != null) {
      return groupLoaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements GroupsState {
  const factory Loaded(final Group group) = _$LoadedImpl;

  Group get group;

  /// Create a copy of GroupsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreatedImplCopyWith<$Res> {
  factory _$$CreatedImplCopyWith(
          _$CreatedImpl value, $Res Function(_$CreatedImpl) then) =
      __$$CreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Group group});

  $GroupCopyWith<$Res> get group;
}

/// @nodoc
class __$$CreatedImplCopyWithImpl<$Res>
    extends _$GroupsStateCopyWithImpl<$Res, _$CreatedImpl>
    implements _$$CreatedImplCopyWith<$Res> {
  __$$CreatedImplCopyWithImpl(
      _$CreatedImpl _value, $Res Function(_$CreatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
  }) {
    return _then(_$CreatedImpl(
      null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group,
    ));
  }

  /// Create a copy of GroupsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupCopyWith<$Res> get group {
    return $GroupCopyWith<$Res>(_value.group, (value) {
      return _then(_value.copyWith(group: value));
    });
  }
}

/// @nodoc

class _$CreatedImpl implements Created {
  const _$CreatedImpl(this.group);

  @override
  final Group group;

  @override
  String toString() {
    return 'GroupsState.groupCreated(group: $group)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatedImpl &&
            (identical(other.group, group) || other.group == group));
  }

  @override
  int get hashCode => Object.hash(runtimeType, group);

  /// Create a copy of GroupsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatedImplCopyWith<_$CreatedImpl> get copyWith =>
      __$$CreatedImplCopyWithImpl<_$CreatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppFailure failure) error,
    required TResult Function(Group group) groupLoaded,
    required TResult Function(Group group) groupCreated,
    required TResult Function(Group group) groupUpdated,
  }) {
    return groupCreated(group);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppFailure failure)? error,
    TResult? Function(Group group)? groupLoaded,
    TResult? Function(Group group)? groupCreated,
    TResult? Function(Group group)? groupUpdated,
  }) {
    return groupCreated?.call(group);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppFailure failure)? error,
    TResult Function(Group group)? groupLoaded,
    TResult Function(Group group)? groupCreated,
    TResult Function(Group group)? groupUpdated,
    required TResult orElse(),
  }) {
    if (groupCreated != null) {
      return groupCreated(group);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GroupsLoading value) loading,
    required TResult Function(GroupsError value) error,
    required TResult Function(Loaded value) groupLoaded,
    required TResult Function(Created value) groupCreated,
    required TResult Function(Updated value) groupUpdated,
  }) {
    return groupCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupsLoading value)? loading,
    TResult? Function(GroupsError value)? error,
    TResult? Function(Loaded value)? groupLoaded,
    TResult? Function(Created value)? groupCreated,
    TResult? Function(Updated value)? groupUpdated,
  }) {
    return groupCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupsLoading value)? loading,
    TResult Function(GroupsError value)? error,
    TResult Function(Loaded value)? groupLoaded,
    TResult Function(Created value)? groupCreated,
    TResult Function(Updated value)? groupUpdated,
    required TResult orElse(),
  }) {
    if (groupCreated != null) {
      return groupCreated(this);
    }
    return orElse();
  }
}

abstract class Created implements GroupsState {
  const factory Created(final Group group) = _$CreatedImpl;

  Group get group;

  /// Create a copy of GroupsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatedImplCopyWith<_$CreatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatedImplCopyWith<$Res> {
  factory _$$UpdatedImplCopyWith(
          _$UpdatedImpl value, $Res Function(_$UpdatedImpl) then) =
      __$$UpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Group group});

  $GroupCopyWith<$Res> get group;
}

/// @nodoc
class __$$UpdatedImplCopyWithImpl<$Res>
    extends _$GroupsStateCopyWithImpl<$Res, _$UpdatedImpl>
    implements _$$UpdatedImplCopyWith<$Res> {
  __$$UpdatedImplCopyWithImpl(
      _$UpdatedImpl _value, $Res Function(_$UpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
  }) {
    return _then(_$UpdatedImpl(
      null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group,
    ));
  }

  /// Create a copy of GroupsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupCopyWith<$Res> get group {
    return $GroupCopyWith<$Res>(_value.group, (value) {
      return _then(_value.copyWith(group: value));
    });
  }
}

/// @nodoc

class _$UpdatedImpl implements Updated {
  const _$UpdatedImpl(this.group);

  @override
  final Group group;

  @override
  String toString() {
    return 'GroupsState.groupUpdated(group: $group)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatedImpl &&
            (identical(other.group, group) || other.group == group));
  }

  @override
  int get hashCode => Object.hash(runtimeType, group);

  /// Create a copy of GroupsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatedImplCopyWith<_$UpdatedImpl> get copyWith =>
      __$$UpdatedImplCopyWithImpl<_$UpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppFailure failure) error,
    required TResult Function(Group group) groupLoaded,
    required TResult Function(Group group) groupCreated,
    required TResult Function(Group group) groupUpdated,
  }) {
    return groupUpdated(group);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppFailure failure)? error,
    TResult? Function(Group group)? groupLoaded,
    TResult? Function(Group group)? groupCreated,
    TResult? Function(Group group)? groupUpdated,
  }) {
    return groupUpdated?.call(group);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppFailure failure)? error,
    TResult Function(Group group)? groupLoaded,
    TResult Function(Group group)? groupCreated,
    TResult Function(Group group)? groupUpdated,
    required TResult orElse(),
  }) {
    if (groupUpdated != null) {
      return groupUpdated(group);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GroupsLoading value) loading,
    required TResult Function(GroupsError value) error,
    required TResult Function(Loaded value) groupLoaded,
    required TResult Function(Created value) groupCreated,
    required TResult Function(Updated value) groupUpdated,
  }) {
    return groupUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupsLoading value)? loading,
    TResult? Function(GroupsError value)? error,
    TResult? Function(Loaded value)? groupLoaded,
    TResult? Function(Created value)? groupCreated,
    TResult? Function(Updated value)? groupUpdated,
  }) {
    return groupUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupsLoading value)? loading,
    TResult Function(GroupsError value)? error,
    TResult Function(Loaded value)? groupLoaded,
    TResult Function(Created value)? groupCreated,
    TResult Function(Updated value)? groupUpdated,
    required TResult orElse(),
  }) {
    if (groupUpdated != null) {
      return groupUpdated(this);
    }
    return orElse();
  }
}

abstract class Updated implements GroupsState {
  const factory Updated(final Group group) = _$UpdatedImpl;

  Group get group;

  /// Create a copy of GroupsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatedImplCopyWith<_$UpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
