import 'package:flutter/material.dart';
import 'package:mz_github/stores/app_state.dart';
import 'package:mz_github/stores/module/my.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

class BasicDashboard extends StatefulWidget {
  @override
  _BasicDashboardState createState() => _BasicDashboardState();
}

class _BasicDashboardState extends State<BasicDashboard> {
  Store<AppState> get _store => AppState.of(context);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Store<AppState>>(
      onInit: _onInit,
      builder: (BuildContext context, vm) {
        return Container(
          child: InkWell(
            onTap: () {},
            child: Text('dashboard ${vm.state.myState.say}'),
          ),
        );
      },
      converter: (Store store) => store,
    );
  }

  void _onInit(Store<AppState> store) {
  }
}
