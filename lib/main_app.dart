import 'package:flutter/material.dart';
import 'package:mz_github/stores/app_state.dart';
import 'package:mz_github/stores/login/login_state.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mz_github/pages/login.dart';
import 'package:mz_github/stores/app_reducers.dart';

class GithubApp extends StatefulWidget {
  final SharedPreferences sharedPreferences;

  const GithubApp({Key key, this.sharedPreferences}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _MainPageStat();
}

class _MainPageStat extends State<GithubApp> {
  var _store;
  @override
  void initState() {
    super.initState();
    _store = Store<AppState>(appReducer,
        initialState: AppState(
          sharedPreferences: widget.sharedPreferences,
          loginState: LoginState(),
        ),
        middleware: [thunkMiddleware]);
  }

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: _store,
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.black,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
        ),
        home: LoginPage(),
      ),
    );
  }
}
