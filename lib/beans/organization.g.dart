// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Organization _$OrganizationFromJson(Map<String, dynamic> json) {
  return Organization()
    ..login = json['login'] as String
    ..id = json['id'] as int
    ..nodeId = json['node_id'] as String
    ..url = json['url'] as String
    ..reposUrl = json['repos_url'] as String
    ..eventsUrl = json['events_url'] as String
    ..hooksUrl = json['hooks_url'] as String
    ..issuesUrl = json['issues_url'] as String
    ..membersUrl = json['members_url'] as String
    ..publicMembersUrl = json['public_members_url'] as String
    ..avatarUrl = json['avatar_url'] as String
    ..description = json['description'] as String;
}

Map<String, dynamic> _$OrganizationToJson(Organization instance) =>
    <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'node_id': instance.nodeId,
      'url': instance.url,
      'repos_url': instance.reposUrl,
      'events_url': instance.eventsUrl,
      'hooks_url': instance.hooksUrl,
      'issues_url': instance.issuesUrl,
      'members_url': instance.membersUrl,
      'public_members_url': instance.publicMembersUrl,
      'avatar_url': instance.avatarUrl,
      'description': instance.description
    };
