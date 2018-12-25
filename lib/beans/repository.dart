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

  @JsonKey(name: 'full_name')
  String fullName;

  bool private;

  RepositoryOwner owner;

  @JsonKey(name: 'html_url')
  String htmlUrl;

  String description;

  bool fork;

  String url;

  @JsonKey(name: 'forks_url')
  String forksUrl;

  @JsonKey(name: 'keys_url')
  String keysUrl;

  @JsonKey(name: 'collaborators_url')
  String collaboratorsUrl;

  @JsonKey(name: 'teams_url')
  String teamsUrl;

  @JsonKey(name: 'hooks_url')
  String hooksUrl;

  @JsonKey(name: 'issue_events_url')
  String issueEventsUrl;

  @JsonKey(name: 'assignees_url')
  String assigneesUrl;

  @JsonKey(name: 'branches_url')
  String branchesUrl;

  @JsonKey(name: 'tags_url')
  String tagsUrl;

  @JsonKey(name: 'blobs_url')
  String blobsUrl;

  @JsonKey(name: 'git_tags_url')
  String gitTagsUrl;

  @JsonKey(name: 'git_refs_url')
  String gitRefsUrl;

  @JsonKey(name: 'trees_url')
  String treesUrl;

  @JsonKey(name: 'statuses_url')
  String statusesUrl;

  @JsonKey(name: 'languages_url')
  String languagesUrl;

  @JsonKey(name: 'stargazers_url')
  String stargazersUrl;

  @JsonKey(name: 'contributors_url')
  String contributorsUrl;

  @JsonKey(name: 'subscribers_url')
  String subscribersUrl;

  @JsonKey(name: 'subscription_url')
  String subscriptionUrl;

  @JsonKey(name: 'commits_url')
  String commitsUrl;

  @JsonKey(name: 'git_commits_url')
  String gitCommitsUrl;

  @JsonKey(name: 'comments_url')
  String commentsUrl;

  @JsonKey(name: 'issue_comments_url')
  String issueCommentsUrl;

  @JsonKey(name: 'contents_url')
  String contentsUrl;

  @JsonKey(name: 'compare_url')
  String compareUrl;

  @JsonKey(name: 'merges_url')
  String mergesUrl;

  @JsonKey(name: 'archive_url')
  String archiveUrl;

  @JsonKey(name: 'downloads_url')
  String downloadsUrl;

  @JsonKey(name: 'issues_url')
  String issuesUrl;

  @JsonKey(name: 'pulls_url')
  String pullsUrl;

  @JsonKey(name: 'milestones_url')
  String milestonesUrl;

  @JsonKey(name: 'notifications_url')
  String notificationsUrl;

  @JsonKey(name: 'labels_url')
  String labelsUrl;

  @JsonKey(name: 'releases_url')
  String releasesUrl;

  @JsonKey(name: 'deployments_url')
  String deploymentsUrl;

  @JsonKey(name: 'create_at')
  String createdAt;

  @JsonKey(name: 'pushed_at')
  String pushedAt;

  @JsonKey(name: 'git_url')
  String gitUrl;

  @JsonKey(name: 'ssh_url')
  String sshUrl;

  @JsonKey(name: 'clone_url')
  String cloneUrl;

  @JsonKey(name: 'svn_url')
  String svnUrl;

  String homepage;

  int size;

  @JsonKey(name: 'stargazers_count')
  int stargazersCount;

  @JsonKey(name: 'watchers_count')
  int watchersCount;

  String language;

  @JsonKey(name: 'has_issues')
  bool hasIssues;

  @JsonKey(name: 'has_projects')
  bool hasProjects;

  @JsonKey(name: 'has_downloads')
  bool hasDownloads;

  @JsonKey(name: 'has_wiki')
  bool hasWiki;

  @JsonKey(name: 'has_pages')
  bool hasPages;

  @JsonKey(name: 'forks_count')
  int forksCount;

  @JsonKey(name: 'mirror_url')
  String mirrorUrl;

  bool archived;

  @JsonKey(name: 'open_issue_count')
  int openIssueCount;

  RepositoryLicense license;

  int forks;

  @JsonKey(name: 'open_issues')
  int openIssues;

  int watchers;

  @JsonKey(name: 'default_branch')
  String defaultBranch;

  Map<String, bool> permissions;
}
