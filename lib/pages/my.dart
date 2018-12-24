import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mz_github/constants.dart';
import 'package:mz_github/pages/basic.dart';
import 'package:mz_github/pages/my/follower.dart';
import 'package:mz_github/pages/my/organization.dart';
import 'package:mz_github/pages/my/repository.dart';
import 'package:mz_github/pages/my/stared.dart';
import 'package:mz_github/pages/my/watcher.dart';
import 'package:mz_github/stores/app_state.dart';
import 'package:mz_github/widgets/mz_app_bar.dart';
import 'package:mz_github/widgets/mz_label_info.dart';
import 'package:mz_github/widgets/mz_tab_item.dart';
import 'package:redux/redux.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> with SingleTickerProviderStateMixin {
  var _tabs = <BasicTab>[
    BasicTab('我的组织', MyOrganizationPage()),
    BasicTab('仓库列表', MyRepositoryPage()),
    BasicTab('点赞的仓库', MyStaredPage()),
    BasicTab('跟随者', MyFollowerPage()),
    BasicTab('关注者', MyWatcherPage()),
  ];
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      builder: (BuildContext context, vm) {
        return Scaffold(
          appBar: MZAppBar(
            title: '${vm.appUser.login} 的主页',
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(220.0),
              child: Container(
                height: 200.0,
                margin: EdgeInsets.only(top: 20.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Hero(
                              tag: 'user-avatar',
                              child: Container(
                                height: 80.0,
                                width: 80.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                                  image: DecorationImage(
                                    image: NetworkImage(vm.appUser.avatarUrl),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Wrap(
                                direction: Axis.vertical,
                                spacing: 10.0,
                                children: <Widget>[
                                  MZLabelInfo(
                                    title: Icon(
                                      Icons.location_on,
                                      color: Colors.white,
                                      size: kIconSize,
                                    ),
                                    info: vm.appUser.location,
                                  ),
                                  MZLabelInfo(
                                    title: Icon(
                                      Icons.email,
                                      color: Colors.white,
                                      size: kIconSize,
                                    ),
                                    info: vm.appUser.email,
                                  ),
                                  MZLabelInfo(
                                    title: Icon(
                                      Icons.link,
                                      color: Colors.white,
                                      size: kIconSize,
                                    ),
                                    info: vm.appUser.blog,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '描述: ${vm.appUser.bio}',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      TabBar(
                        controller: _tabController,
                        indicatorWeight: 2.0,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: Colors.white,
                        isScrollable: true,
                        tabs: _tabs.map((t) => MZTabItem(title: t.title)).toList(),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: LayoutBuilder(
            builder: (context, cors) {
              return Container(
                height: cors.maxHeight,
                child: Container(
                  child: TabBarView(
                    controller: _tabController,
                    children: _tabs.map((t) => t.tab).toList(),
                  ),
                ),
              );
            },
          ),
        );
      },
      converter: (Store store) => store.state,
    );
  }
}
