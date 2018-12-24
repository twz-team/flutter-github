import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mz_github/pages/login.dart';
import 'package:mz_github/stores/app_actions.dart';
import 'package:mz_github/stores/app_state.dart';
import 'package:quiver/async.dart';
import 'package:redux/redux.dart';

class WelcomePage extends StatefulWidget {
  final Store<AppState> store;

  const WelcomePage({Key key, this.store}) : super(key: key);
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int _timer = 3;
  CountdownTimer _countdownTimer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    if (widget.store.state.token == null) {
      _countdownTimer = CountdownTimer(Duration(seconds: 3), Duration(seconds: 1));
      _countdownTimer.listen((event) {
        setState(() {
          _timer--;
        });
      }, onDone: () {
        Navigator.of(context)
            .pushReplacement(CupertinoPageRoute(builder: (context) => LoginPage()));
      });
    } else {
      widget.store.dispatch(AppAction.initApiAction);
    }
  }

  @override
  void dispose() {
    if (_countdownTimer != null && _countdownTimer.isRunning) _countdownTimer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      builder: (BuildContext context, vm) {
        return Scaffold(
          body: Container(
            child: Center(
              child: Text(vm.token == null ? '欢迎，欢迎, 倒计时 $_timer' : vm.loginMessage),
            ),
          ),
        );
      },
      converter: (Store store) => store.state,
    );
  }
}
