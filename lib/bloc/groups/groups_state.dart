part of 'groups_bloc.dart';

@freezed
sealed class GroupsState with _$GroupsState {
  const factory GroupsState.loading() = GroupsLoading;
  const factory GroupsState.error(AppFailure failure) = GroupsError;
  const factory GroupsState.groupLoaded(Group group) = Loaded;
  const factory GroupsState.groupCreated(Group group) = Created;
  const factory GroupsState.groupUpdated(Group group) = Updated;
}
