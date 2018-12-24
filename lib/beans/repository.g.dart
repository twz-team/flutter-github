// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RepositoryOwner _$RepositoryOwnerFromJson(Map<String, dynamic> json) {
  return RepositoryOwner()
    ..zsirfs = json['zsirfs'] as String
    ..id = json['id'] as int
    ..nodeId = json['nodeId'] as String
    ..avatarUrl = json['avatar_url'] as String
    ..url = json['url'] as String
    ..gravatarId = json['gravatar_id'] as String
    ..htmlUrl = json['html_url'] as String
    ..followersUrl = json['followers_url'] as String
    ..followingUrl = json['following_url'] as String
    ..gistsUrl = json['gists_url'] as String
    ..starredUrl = json['starred_url'] as String
    ..subscriptionsUrl = json['subscriptions_url'] as String
    ..organizationsUrl = json['organizations_url'] as String
    ..reposUrl = json['repos_url'] as String
    ..eventsUrl = json['events_url'] as String
    ..receivedEventsUrl = json['received_events_url'] as String
    ..type = json['type'] as String
    ..siteAdmin = json['site_admin'] as String;
}

Map<String, dynamic> _$RepositoryOwnerToJson(RepositoryOwner instance) =>
    <String, dynamic>{
      'zsirfs': instance.zsirfs,
      'id': instance.id,
      'nodeId': instance.nodeId,
      'avatar_url': instance.avatarUrl,
      'url': instance.url,
      'gravatar_id': instance.gravatarId,
      'html_url': instance.htmlUrl,
      'followers_url': instance.followersUrl,
      'following_url': instance.followingUrl,
      'gists_url': instance.gistsUrl,
      'starred_url': instance.starredUrl,
      'subscriptions_url': instance.subscriptionsUrl,
      'organizations_url': instance.organizationsUrl,
      'repos_url': instance.reposUrl,
      'events_url': instance.eventsUrl,
      'received_events_url': instance.receivedEventsUrl,
      'type': instance.type,
      'site_admin': instance.siteAdmin
    };

RepositoryLicense _$RepositoryLicenseFromJson(Map<String, dynamic> json) {
  return RepositoryLicense()
    ..key = json['key'] as String
    ..name = json['name'] as String
    ..spdxId = json['spdx_id'] as String
    ..url = json['url'] as String
    ..nodeId = json['node_id'] as String;
}

Map<String, dynamic> _$RepositoryLicenseToJson(RepositoryLicense instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'spdx_id': instance.spdxId,
      'url': instance.url,
      'node_id': instance.nodeId
    };

Repository _$RepositoryFromJson(Map<String, dynamic> json) {
  return Repository()
    ..id = json['id'] as int
    ..nodeId = json['node_id'] as String
    ..name = json['name'] as String
    ..fullName = json['fullName'] as String
    ..private = json['private'] as bool
    ..owner =
        json['owner'] == null ? null : RepositoryOwner.fromJson(json['owner'])
    ..htmlUrl = json['htmlUrl'] as String
    ..description = json['description'] as String
    ..fork = json['fork'] as bool
    ..url = json['url'] as String
    ..forksUrl = json['forksUrl'] as String
    ..keysUrl = json['keysUrl'] as String
    ..collaboratorsUrl = json['collaboratorsUrl'] as String
    ..teamsUrl = json['teamsUrl'] as String
    ..hooksUrl = json['hooksUrl'] as String
    ..issueEventsUrl = json['issueEventsUrl'] as String
    ..assigneesUrl = json['assigneesUrl'] as String
    ..branchesUrl = json['branchesUrl'] as String
    ..tagsUrl = json['tagsUrl'] as String
    ..blobsUrl = json['blobsUrl'] as String
    ..gitTagsUrl = json['gitTagsUrl'] as String
    ..gitRefsUrl = json['gitRefsUrl'] as String
    ..treesUrl = json['treesUrl'] as String
    ..statusesUrl = json['statusesUrl'] as String
    ..languagesUrl = json['languagesUrl'] as String
    ..stargazersUrl = json['stargazersUrl'] as String
    ..contributorsUrl = json['contributorsUrl'] as String
    ..subscribersUrl = json['subscribersUrl'] as String
    ..subscriptionUrl = json['subscriptionUrl'] as String
    ..commitsUrl = json['commitsUrl'] as String
    ..gitCommitsUrl = json['gitCommitsUrl'] as String
    ..commentsUrl = json['commentsUrl'] as String
    ..issueCommentsUrl = json['issueCommentsUrl'] as String
    ..contentsUrl = json['contentsUrl'] as String
    ..compareUrl = json['compareUrl'] as String
    ..mergesUrl = json['mergesUrl'] as String
    ..archiveUrl = json['archiveUrl'] as String
    ..downloadsUrl = json['downloadsUrl'] as String
    ..issuesUrl = json['issuesUrl'] as String
    ..pullsUrl = json['pullsUrl'] as String
    ..milestonesUrl = json['milestonesUrl'] as String
    ..notificationsUrl = json['notificationsUrl'] as String
    ..labelsUrl = json['labelsUrl'] as String
    ..releasesUrl = json['releasesUrl'] as String
    ..deploymentsUrl = json['deploymentsUrl'] as String
    ..createdAt = json['createdAt'] as String
    ..pushedAt = json['pushedAt'] as String
    ..gitUrl = json['gitUrl'] as String
    ..sshUrl = json['sshUrl'] as String
    ..cloneUrl = json['cloneUrl'] as String
    ..svnUrl = json['svnUrl'] as String
    ..homepage = json['homepage'] as String
    ..size = json['size'] as int
    ..stargazersCount = json['stargazersCount'] as int
    ..watchersCount = json['watchersCount'] as int
    ..language = json['language'] as String
    ..hasIussues = json['hasIussues'] as bool
    ..hasProjects = json['hasProjects'] as bool
    ..hasDownloads = json['hasDownloads'] as bool
    ..hasWiki = json['hasWiki'] as bool
    ..hasPages = json['hasPages'] as bool
    ..forksCount = json['forksCount'] as int
    ..mirrorUrl = json['mirrorUrl'] as String
    ..archived = json['archived'] as bool
    ..openIssueCount = json['openIssueCount'] as int
    ..license = json['license'] == null
        ? null
        : RepositoryLicense.fromJson(json['license'])
    ..forks = json['forks'] as int
    ..openIssues = json['openIssues'] as int
    ..watchers = json['watchers'] as int
    ..defaultBranch = json['defaultBranch'] as String
    ..permissions = (json['permissions'] as Map<String, dynamic>)
        ?.map((k, e) => MapEntry(k, e as bool));
}

Map<String, dynamic> _$RepositoryToJson(Repository instance) =>
    <String, dynamic>{
      'id': instance.id,
      'node_id': instance.nodeId,
      'name': instance.name,
      'fullName': instance.fullName,
      'private': instance.private,
      'owner': instance.owner,
      'htmlUrl': instance.htmlUrl,
      'description': instance.description,
      'fork': instance.fork,
      'url': instance.url,
      'forksUrl': instance.forksUrl,
      'keysUrl': instance.keysUrl,
      'collaboratorsUrl': instance.collaboratorsUrl,
      'teamsUrl': instance.teamsUrl,
      'hooksUrl': instance.hooksUrl,
      'issueEventsUrl': instance.issueEventsUrl,
      'assigneesUrl': instance.assigneesUrl,
      'branchesUrl': instance.branchesUrl,
      'tagsUrl': instance.tagsUrl,
      'blobsUrl': instance.blobsUrl,
      'gitTagsUrl': instance.gitTagsUrl,
      'gitRefsUrl': instance.gitRefsUrl,
      'treesUrl': instance.treesUrl,
      'statusesUrl': instance.statusesUrl,
      'languagesUrl': instance.languagesUrl,
      'stargazersUrl': instance.stargazersUrl,
      'contributorsUrl': instance.contributorsUrl,
      'subscribersUrl': instance.subscribersUrl,
      'subscriptionUrl': instance.subscriptionUrl,
      'commitsUrl': instance.commitsUrl,
      'gitCommitsUrl': instance.gitCommitsUrl,
      'commentsUrl': instance.commentsUrl,
      'issueCommentsUrl': instance.issueCommentsUrl,
      'contentsUrl': instance.contentsUrl,
      'compareUrl': instance.compareUrl,
      'mergesUrl': instance.mergesUrl,
      'archiveUrl': instance.archiveUrl,
      'downloadsUrl': instance.downloadsUrl,
      'issuesUrl': instance.issuesUrl,
      'pullsUrl': instance.pullsUrl,
      'milestonesUrl': instance.milestonesUrl,
      'notificationsUrl': instance.notificationsUrl,
      'labelsUrl': instance.labelsUrl,
      'releasesUrl': instance.releasesUrl,
      'deploymentsUrl': instance.deploymentsUrl,
      'createdAt': instance.createdAt,
      'pushedAt': instance.pushedAt,
      'gitUrl': instance.gitUrl,
      'sshUrl': instance.sshUrl,
      'cloneUrl': instance.cloneUrl,
      'svnUrl': instance.svnUrl,
      'homepage': instance.homepage,
      'size': instance.size,
      'stargazersCount': instance.stargazersCount,
      'watchersCount': instance.watchersCount,
      'language': instance.language,
      'hasIussues': instance.hasIussues,
      'hasProjects': instance.hasProjects,
      'hasDownloads': instance.hasDownloads,
      'hasWiki': instance.hasWiki,
      'hasPages': instance.hasPages,
      'forksCount': instance.forksCount,
      'mirrorUrl': instance.mirrorUrl,
      'archived': instance.archived,
      'openIssueCount': instance.openIssueCount,
      'license': instance.license,
      'forks': instance.forks,
      'openIssues': instance.openIssues,
      'watchers': instance.watchers,
      'defaultBranch': instance.defaultBranch,
      'permissions': instance.permissions
    };
