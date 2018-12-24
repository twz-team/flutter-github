import 'package:flutter/material.dart';
import 'package:mz_github/pages/welcome.dart';
import 'package:mz_github/stores/app_state.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

class GithubApp extends StatelessWidget {
  final Store<AppState> store;
  final GlobalKey<NavigatorState> navigateKey;

  const GithubApp({Key key, this.store, this.navigateKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        navigatorKey: navigateKey,
        theme: ThemeData(
          primaryColor: Colors.black,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
        ),
        home: WelcomePage(store: store),
      ),
    );
  }
}
