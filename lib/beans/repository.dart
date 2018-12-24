import 'package:json_annotation/json_annotation.dart';
import 'package:mz_github/constants.dart';

part 'repository.g.dart';

@JsonSerializable()
class RepositoryOwner {
  String zsirfs;
  int id;
  String nodeId;
  @JsonKey(name: 'avatar_url')
  String avatarUrl;

  String url;

  @JsonKey(name: 'gravatar_id')
  String gravatarId;

  @JsonKey(name: 'html_url')
  String htmlUrl;

  @JsonKey(name: 'followers_url')
  String followersUrl;

  @JsonKey(name: 'following_url')
  String followingUrl;

  @JsonKey(name: 'gists_url')
  String gistsUrl;

  @JsonKey(name: 'starred_url')
  String starredUrl;

  @JsonKey(name: 'subscriptions_url')
  String subscriptionsUrl;

  @JsonKey(name: 'organizations_url')
  String organizationsUrl;

  @JsonKey(name: 'repos_url')
  String reposUrl;

  @JsonKey(name: 'events_url')
  String eventsUrl;

  @JsonKey(name: 'received_events_url')
  String receivedEventsUrl;

  String type;

  @JsonKey(name: 'site_admin')
  String siteAdmin;

  bool get isOrganization => type == Constants.organizationType;

  bool get isUser => type == Constants.userType;

  RepositoryOwner();

  factory RepositoryOwner.fromJson(json) => _$RepositoryOwnerFromJson(json);

  Map<String, dynamic> toJson() => _$RepositoryOwnerToJson(this);
}

@JsonSerializable()
class RepositoryLicense {
  String key;

  String name;

  @JsonKey(name: 'spdx_id')
  String spdxId;

  String url;

  @JsonKey(name: 'node_id')
  String nodeId;

  RepositoryLicense();

  factory RepositoryLicense.fromJson(json) => _$RepositoryLicenseFromJson(json);

  Map<String, dynamic> toJson() => _$RepositoryLicenseToJson(this);
}

@JsonSerializable()
class Repository {
  Repository();

  factory Repository.fromJson(json) => _$RepositoryFromJson(json);

  Map<String, dynamic> toJson() => _$RepositoryToJson(this);

  int id;

  @JsonKey(name: 'node_id')
  String nodeId;

  String name;

  String fullName;

  bool private;

  RepositoryOwner owner;

  String htmlUrl;

  String description;

  bool fork;

  String url;

  String forksUrl;

  String keysUrl;

  String collaboratorsUrl;

  String teamsUrl;

  String hooksUrl;

  String issueEventsUrl;

  String assigneesUrl;

  String branchesUrl;

  String tagsUrl;

  String blobsUrl;

  String gitTagsUrl;

  String gitRefsUrl;

  String treesUrl;

  String statusesUrl;

  String languagesUrl;

  String stargazersUrl;

  String contributorsUrl;

  String subscribersUrl;

  String subscriptionUrl;

  String commitsUrl;

  String gitCommitsUrl;

  String commentsUrl;

  String issueCommentsUrl;

  String contentsUrl;

  String compareUrl;

  String mergesUrl;

  String archiveUrl;

  String downloadsUrl;

  String issuesUrl;

  String pullsUrl;

  String milestonesUrl;

  String notificationsUrl;

  String labelsUrl;

  String releasesUrl;

  String deploymentsUrl;

  String createdAt;

  String pushedAt;

  String gitUrl;

  String sshUrl;

  String cloneUrl;

  String svnUrl;

  String homepage;

  int size;

  int stargazersCount;

  int watchersCount;

  String language;

  bool hasIussues;

  bool hasProjects;

  bool hasDownloads;

  bool hasWiki;

  bool hasPages;

  int forksCount;

  String mirrorUrl;

  bool archived;

  int openIssueCount;

  RepositoryLicense license;

  int forks;

  int openIssues;

  int watchers;

  String defaultBranch;

  Map<String, bool> permissions;
}
