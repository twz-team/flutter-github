import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:mz_github/stores/app_actions.dart';
import 'package:mz_github/stores/app_state.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mz_github/config/api.dart';
import 'package:mz_github/widgets/mz_app_bar.dart';
import 'login.dart';

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
    AppState.of(context).dispatch(SetTokenAction(query['token']));
    AppState.of(context).dispatch(InitAppAction.requestInitApp);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: MZApi.authPath,
      initialChild: LayoutBuilder(
        builder: (context, cros) {
          return Container(
            width: cros.maxWidth,
            height: cros.maxHeight,
            child: Center(
              child: RefreshProgressIndicator(
                backgroundColor: Colors.white,
              ),
            ),
          );
        },
      ),
      appBar: MZAppBar(
        title: _title,
      ),
    );
  }
}
