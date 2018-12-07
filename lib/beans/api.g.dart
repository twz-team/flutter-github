// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Api _$ApiBeanFromJson(Map<String, dynamic> json) {
  return Api()
    ..currentUserUrl = json['current_user_url'] as String
    ..currentUserAuthorizationsHtmlUrl =
        json['current_user_authorizations_html_url'] as String
    ..authorizationsUrl = json['authorizations_url'] as String
    ..codeSearchUrl = json['code_search_url'] as String
    ..emailsUrl = json['emails_url'] as String
    ..emojisUrl = json['emojis_url'] as String
    ..eventsUrl = json['events_url'] as String
    ..feedsUrl = json['feeds_Url'] as String
    ..followersUrl = json['followers_url'] as String
    ..gistsUrl = json['gists_url'] as String
    ..hubUrl = json['hub_url'] as String
    ..issueSearchUrl = json['issue_search_url'] as String
    ..issuesUrl = json['issues_url'] as String
    ..keysUrl = json['keys_url'] as String
    ..notificationsUrl = json['notifications_url'] as String
    ..organizationRepositoriesUrl =
        json['current_user_repositories_url'] as String
    ..starredUrl = json['starred_url'] as String
    ..starredGistsUrl = json['starred_gists_url'] as String
    ..teamUrl = json['team_url'] as String
    ..userUrl = json['user_url'] as String
    ..userOrganizationsUrl = json['user_organizations_url'] as String
    ..userRepositoriesUrl = json['user_repositories_url'] as String
    ..userSearchUrl = json['user_search_url'] as String;
}

Map<String, dynamic> _$ApiBeanToJson(Api instance) => <String, dynamic>{
      'current_user_url': instance.currentUserUrl,
      'current_user_authorizations_html_url':
          instance.currentUserAuthorizationsHtmlUrl,
      'authorizations_url': instance.authorizationsUrl,
      'code_search_url': instance.codeSearchUrl,
      'emails_url': instance.emailsUrl,
      'emojis_url': instance.emojisUrl,
      'events_url': instance.eventsUrl,
      'feeds_Url': instance.feedsUrl,
      'followers_url': instance.followersUrl,
      'gists_url': instance.gistsUrl,
      'hub_url': instance.hubUrl,
      'issue_search_url': instance.issueSearchUrl,
      'issues_url': instance.issuesUrl,
      'keys_url': instance.keysUrl,
      'notifications_url': instance.notificationsUrl,
      'current_user_repositories_url': instance.organizationRepositoriesUrl,
      'starred_url': instance.starredUrl,
      'starred_gists_url': instance.starredGistsUrl,
      'team_url': instance.teamUrl,
      'user_url': instance.userUrl,
      'user_organizations_url': instance.userOrganizationsUrl,
      'user_repositories_url': instance.userRepositoriesUrl,
      'user_search_url': instance.userSearchUrl
    };
