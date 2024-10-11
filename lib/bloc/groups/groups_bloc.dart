import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:traveltribe/constants/app_failure.dart';
import 'package:traveltribe/models/group.dart';
import 'package:traveltribe/services/database_provider.dart';
import 'package:traveltribe/services/service_locator.dart';

part 'groups_event.dart';
part 'groups_state.dart';
part 'groups_bloc.freezed.dart';

class GroupsBloc extends Bloc<GroupsEvent, GroupsState> {
  final DatabaseProvider _databaseProvider = sl<DatabaseProvider>();
  GroupsBloc() : super(GroupsState.loading()) {
    on<_FetchGroup>(_onFetchGroup);
    on<_CreateGroup>(_onCreateGroup);
    on<_UpdateGroup>(_onUpdateGroup);
  }

  Future<void> _onFetchGroup(
    _FetchGroup event,
    Emitter<GroupsState> emit,
  ) async {
    emit(GroupsState.loading());
    try {
      final group = await _databaseProvider.getGroup(event.groupId);
      emit(GroupsState.groupLoaded(group));
    } on AppFailure catch (e) {
      emit(GroupsState.error(e));
    }
  }

  Future<void> _onCreateGroup(
    _CreateGroup event,
    Emitter<GroupsState> emit,
  ) async {
    emit(GroupsState.loading());
    try {
      final group = await _databaseProvider.createGroup(
        groupName: event.name,
        destination: event.destination,
        description: event.description,
        startDate: event.startDate,
        endDate: event.endDate,
        owner: event.owner,
      );
      emit(GroupsState.groupCreated(group));
    } on AppFailure catch (e) {
      emit(GroupsState.error(e));
    }
  }

  Future<void> _onUpdateGroup(
    _UpdateGroup event,
    Emitter<GroupsState> emit,
  ) async {
    emit(GroupsState.loading());
    try {
      await _databaseProvider.updateGroup(event.group);
      emit(GroupsState.groupUpdated(event.group));
    } on AppFailure catch (e) {
      emit(GroupsState.error(e));
    }
  }
}
