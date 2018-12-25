/*
{
    "login": "randAdvancer",
    "id": 31266392,
    "node_id": "xxx",
    "url": "https://api.github.com/orgs/randAdvancer",
    "repos_url": "https://api.github.com/orgs/randAdvancer/repos",
    "events_url": "https://api.github.com/orgs/randAdvancer/events",
    "hooks_url": "https://api.github.com/orgs/randAdvancer/hooks",
    "issues_url": "https://api.github.com/orgs/randAdvancer/issues",
    "members_url": "https://api.github.com/orgs/randAdvancer/members{/member}",
    "public_members_url": "https://api.github.com/orgs/randAdvancer/public_members{/member}",
    "avatar_url": "https://avatars1.githubusercontent.com/u/31266392?v=4",
    "description": null
}
*/
import 'package:json_annotation/json_annotation.dart';

part 'organization.g.dart';

@JsonSerializable()
class Organization {
  String login;
  int id;
  @JsonKey(name: 'node_id')
  String nodeId;

  String url;

  @JsonKey(name: 'repos_url')
  String reposUrl;

  @JsonKey(name: 'events_url')
  String eventsUrl;

  @JsonKey(name: 'hooks_url')
  String hooksUrl;

  @JsonKey(name: 'issues_url')
  String issuesUrl;

  @JsonKey(name: 'members_url')
  String membersUrl;

  @JsonKey(name: 'public_members_url')
  String publicMembersUrl;

  @JsonKey(name: 'avatar_url')
  String avatarUrl;

  String description;

  Organization();

  factory Organization.fromJson(json) => _$OrganizationFromJson(json);

  Map<String, dynamic> toJson() => _$OrganizationToJson(this);
}
