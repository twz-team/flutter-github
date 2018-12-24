import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mz_github/constants.dart';
import 'package:mz_github/pages/basic/basic_dashboard.dart';
import 'package:mz_github/pages/basic/basic_issue.dart';
import 'package:mz_github/pages/basic/basic_pull_request.dart';
import 'package:mz_github/pages/my.dart';
import 'package:mz_github/stores/app_state.dart';
import 'package:mz_github/widgets/mz_app_bar.dart';
import 'package:mz_github/widgets/mz_tab_item.dart';
import 'package:redux/redux.dart';

class BasicTab {
  String title;
  Widget tab;
  BasicTab(this.title, this.tab);
}

class BasicPage extends StatefulWidget {
  @override
  _BasicPageState createState() => _BasicPageState();
}

class _BasicPageState extends State<BasicPage> with SingleTickerProviderStateMixin {
  var _tabs = <BasicTab>[
    BasicTab('Dashboard', BasicDashboard()),
    BasicTab('PR', BasicPullRequest()),
    BasicTab('Issue', BasicIssue()),
  ];
  TabController _tabContainer;

  @override
  void initState() {
    super.initState();
    _tabContainer = TabController(length: _tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      builder: (BuildContext context, vm) {
        return Scaffold(
          appBar: MZAppBar(
            title: 'GitHub',
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(44.0),
              child: TabBar(
                controller: _tabContainer,
                indicatorWeight: 3.0,
                indicatorColor: Colors.white,
                tabs: _tabs.map((tab) => MZTabItem(title: tab.title)).toList(),
              ),
            ),
            trailng: InkWell(
              onTap: () {
                Navigator.of(context).push(CupertinoPageRoute(builder: (context) => MyPage()));
              },
              child: Hero(
                tag: 'user-avatar',
                child: Container(
                  width: kHeaderImageSize,
                  height: kHeaderImageSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(kHeaderImageSize / 2)),
                    image: DecorationImage(image: NetworkImage(vm.appUser.avatarUrl)),
                  ),
                ),
              ),
            ),
          ),
          body: TabBarView(
            controller: _tabContainer,
            children: _tabs.map((tab) => tab.tab).toList(),
          ),
        );
      },
      converter: (Store<AppState> store) => store.state,
    );
  }
}
