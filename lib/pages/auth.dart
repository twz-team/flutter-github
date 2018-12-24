import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:mz_github/stores/app_actions.dart';
import 'package:mz_github/stores/app_state.dart';
import 'package:mz_github/config/api.dart';
import 'package:mz_github/widgets/mz_app_bar.dart';
import 'package:redux/redux.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key key}) : super(key: key);
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  FlutterWebviewPlugin _webviewPlugin;
  String _title = 'GitHub 授权';

  @override
  void initState() {
    super.initState();
    _webviewPlugin = FlutterWebviewPlugin();
    _webviewPlugin.onUrlChanged.listen(_onUrlChanged);
  }

  @override
  void dispose() {
    _webviewPlugin.dispose();
    super.dispose();
  }

  Store<AppState> get _store => AppState.of(context);

  MediaQueryData get _mediaData => MediaQuery.of(context);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          child: WebviewScaffold(
            url: MZApi.authPath,
            initialChild: _buildInitialChild(),
            appBar: MZAppBar(
              title: _title,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildInitialChild() {
    return Container(
      height: _mediaData.size.height,
      width: _mediaData.size.width,
      child: Center(
        child: RefreshProgressIndicator(
          backgroundColor: Colors.white,
        ),
      ),
    );
  }

  void _onUrlChanged(String url) {
    if (url.contains('authStatus.html?token=')) {
      final uri = Uri.dataFromString(url);
      final queryParameters = uri.queryParameters;
      setState(() {
        _title = '授权成功';
      });
      _toPrepare(queryParameters);
    }
  }

  void _toPrepare(Map<String, String> query) async {
    _store.state.sharedPreferences.setString('token', query['token']);
    _store.dispatch(AppSetTokenAction(query['token']));
    _store.dispatch(AppSetLoginMessageAction('授权成功'));
    _store.dispatch(AppAction.initApiAction);
    Navigator.pop(context);
  }
}
