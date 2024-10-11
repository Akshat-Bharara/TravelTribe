part of 'groups_bloc.dart';

@freezed
sealed class GroupsEvent with _$GroupsEvent {
  const factory GroupsEvent.fetchGroup(String groupId) = _FetchGroup;
  const factory GroupsEvent.createGroup(
      String name,
      String destination,
      String description,
      DateTime startDate,
      DateTime endDate,
      String owner) = _CreateGroup;
  const factory GroupsEvent.updateGroup(Group group) = _UpdateGroup;
}
