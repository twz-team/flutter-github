import 'package:json_annotation/json_annotation.dart';

part 'api.g.dart';
/*
{
  "current_user_url": "https://api.github.com/user",
  "current_user_authorizations_html_url": "https://github.com/settings/connections/applications{/client_id}",
  "authorizations_url": "https://api.github.com/authorizations",
  "code_search_url": "https://api.github.com/search/code?q={query}{&page,per_page,sort,order}",
  "commit_search_url": "https://api.github.com/search/commits?q={query}{&page,per_page,sort,order}",
  "emails_url": "https://api.github.com/user/emails",
  "emojis_url": "https://api.github.com/emojis",
  "events_url": "https://api.github.com/events",
  "feeds_url": "https://api.github.com/feeds",
  "followers_url": "https://api.github.com/user/followers",
  "following_url": "https://api.github.com/user/following{/target}",
  "gists_url": "https://api.github.com/gists{/gist_id}",
  "hub_url": "https://api.github.com/hub",
  "issue_search_url": "https://api.github.com/search/issues?q={query}{&page,per_page,sort,order}",
  "issues_url": "https://api.github.com/issues",
  "keys_url": "https://api.github.com/user/keys",
  "notifications_url": "https://api.github.com/notifications",
  "organization_repositories_url": "https://api.github.com/orgs/{org}/repos{?type,page,per_page,sort}",
  "organization_url": "https://api.github.com/orgs/{org}",
  "public_gists_url": "https://api.github.com/gists/public",
  "rate_limit_url": "https://api.github.com/rate_limit",
  "repository_url": "https://api.github.com/repos/{owner}/{repo}",
  "repository_search_url": "https://api.github.com/search/repositories?q={query}{&page,per_page,sort,order}",
  "current_user_repositories_url": "https://api.github.com/user/repos{?type,page,per_page,sort}",
  "starred_url": "https://api.github.com/user/starred{/owner}{/repo}",
  "starred_gists_url": "https://api.github.com/gists/starred",
  "team_url": "https://api.github.com/teams",
  "user_url": "https://api.github.com/users/{user}",
  "user_organizations_url": "https://api.github.com/user/orgs",
  "user_repositories_url": "https://api.github.com/users/{user}/repos{?type,page,per_page,sort}",
  "user_search_url": "https://api.github.com/search/users?q={query}{&page,per_page,sort,order}"
}
*/

@JsonSerializable()
class Api {
  Api();

  factory Api.fromJson(json) => _$ApiBeanFromJson(json);

  Map<String, dynamic> toJson() => _$ApiBeanToJson(this);

  @JsonKey(name: 'current_user_url')
  String currentUserUrl;

  @JsonKey(name: 'current_user_authorizations_html_url')
  String currentUserAuthorizationsHtmlUrl;

  @JsonKey(name: 'authorizations_url')
  String authorizationsUrl;

  @JsonKey(name: 'code_search_url')
  String codeSearchUrl;

  @JsonKey(name: 'emails_url')
  String emailsUrl;

  @JsonKey(name: 'emojis_url')
  String emojisUrl;

  @JsonKey(name: 'events_url')
  String eventsUrl;

  @JsonKey(name: 'feeds_Url')
  String feedsUrl;

  @JsonKey(name: 'followers_url')
  String followersUrl;

  @JsonKey(name: 'gists_url')
  String gistsUrl;

  @JsonKey(name: 'hub_url')
  String hubUrl;

  @JsonKey(name: 'issue_search_url')
  String issueSearchUrl;

  @JsonKey(name: 'issues_url')
  String issuesUrl;

  @JsonKey(name: 'keys_url')
  String keysUrl;

  @JsonKey(name: 'notifications_url')
  String notificationsUrl;

  @JsonKey(name: 'current_user_repositories_url')
  String organizationRepositoriesUrl;

  @JsonKey(name: 'starred_url')
  String starredUrl;

  @JsonKey(name: 'starred_gists_url')
  String starredGistsUrl;

  @JsonKey(name: 'team_url')
  String teamUrl;

  @JsonKey(name: 'user_url')
  String userUrl;

  @JsonKey(name: 'user_organizations_url')
  String userOrganizationsUrl;

  @JsonKey(name: 'user_repositories_url')
  String userRepositoriesUrl;

  @JsonKey(name: 'user_search_url')
  String userSearchUrl;
}