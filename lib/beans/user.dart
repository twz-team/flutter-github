import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

/*
示例请求
{
    "login": "zsirfs",
    "id": 22249411,
    "node_id": "MDQ6VXNlcjIyMjQ5NDEx",
    "avatar_url": "https://avatars2.githubusercontent.com/u/22249411?v=4",
    "gravatar_id": "",
    "url": "https://api.github.com/users/zsirfs",
    "html_url": "https://github.com/zsirfs",
    "followers_url": "https://api.github.com/users/zsirfs/followers",
    "following_url": "https://api.github.com/users/zsirfs/following{/other_user}",
    "gists_url": "https://api.github.com/users/zsirfs/gists{/gist_id}",
    "starred_url": "https://api.github.com/users/zsirfs/starred{/owner}{/repo}",
    "subscriptions_url": "https://api.github.com/users/zsirfs/subscriptions",
    "organizations_url": "https://api.github.com/users/zsirfs/orgs",
    "repos_url": "https://api.github.com/users/zsirfs/repos",
    "events_url": "https://api.github.com/users/zsirfs/events{/privacy}",
    "received_events_url": "https://api.github.com/users/zsirfs/received_events",
    "type": "User",
    "site_admin": false,
    "name": "zsir",
    "company": null,
    "blog": "https://www.luoyangfu.com",
    "location": "hangzhou",
    "email": "zhenglfsir@gmail.com",
    "hireable": null,
    "bio": "愿你出走半生，归来仍是少年",
    "public_repos": 220,
    "public_gists": 2,
    "followers": 5,
    "following": 20,
    "created_at": "2016-09-17T01:40:17Z",
    "updated_at": "2018-12-06T10:26:02Z",
    "private_gists": 1,
    "total_private_repos": 0,
    "owned_private_repos": 0,
    "disk_usage": 35208,
    "collaborators": 0,
    "two_factor_authentication": false,
    "plan": {
        "name": "free",
        "space": 976562499,
        "collaborators": 0,
        "private_repos": 0
    }
}

 */

@JsonSerializable()
class User {
  User({UserPlanBean plan}) : this.plan = plan ?? UserPlanBean();

  factory User.fromJson(json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  // 登录名称
  String login;
  int id;

  @JsonKey(name: 'node_id')
  String nodeId;

  // 图像连接
  @JsonKey(name: 'avatar_url')
  String avatarUrl;

  @JsonKey(name: 'gravatar_id')
  String gravatarId;

  // 用户信息请求链接
  String url;

  // 用户主页地址
  @JsonKey(name: 'html_url')
  String htmlUrl;

  // 用户的跟随者
  @JsonKey(name: 'followers_url')
  String followersUrl;

  // 用户的关注者
  @JsonKey(name: 'following_url')
  String followingUrl;

  // 用户gists 列表以及 具体gist地址
  @JsonKey(name: 'gists_url')
  String gistsUrl;

  @JsonKey(name: 'starred_url')
  String starredUrl;

  @JsonKey(name: 'subscriptions_url')
  String subscriptionsUrl;

  @JsonKey(name: 'origanizations_url')
  String organizationsUrl;

  @JsonKey(name: 'repos_url')
  String reposUrl;

  @JsonKey(name: 'events_url')
  String eventsUrl;

  @JsonKey(name: 'received_events_url')
  String receivedEventsUrl;

  String type;

  @JsonKey(name: 'site_admin')
  bool siteAdmin;

  String name;

  String company;

  String blog;

  String location;

  String email;

  String hireable;

  String bio;

  @JsonKey(name: 'public_repos')
  int publicRepos;

  @JsonKey(name: 'public_gists')
  int publicGists;

  int followers;

  int following;

  @JsonKey(name: 'create_at')
  String createAt;

  @JsonKey(name: 'update_at')
  String updateAt;

  @JsonKey(name: 'private_gists')
  int privateGists;

  @JsonKey(name: 'total_private_repos')
  int totalPrivateRepos;

  @JsonKey(name: 'owned_private_repos')
  int ownedPrivateRepos;

  @JsonKey(name: 'disk_usage')
  int diskUsage;

  int collaborators;

  @JsonKey(name: 'two_factor_authentication')
  bool twoFactorAuthentication;

  UserPlanBean plan;
}

@JsonSerializable()
class UserPlanBean {
  UserPlanBean();

  factory UserPlanBean.fromJson(json) => _$UserPlanBeanFromJson(json);

  Map<String, dynamic> toJson() => _$UserPlanBeanToJson(this);

  String name;
  int space;
  int collaborators;
  @JsonKey(name: 'private_repos')
  int privateRepos;
}
