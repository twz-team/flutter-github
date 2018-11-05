import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:mz_github/widgets/mz_app_bar.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  FlutterWebviewPlugin _webviewPlugin;
  bool _isAuth;

  @override
  void initState() {
    super.initState();
    _isAuth = false;
    _webviewPlugin = FlutterWebviewPlugin();
    _webviewPlugin.onUrlChanged.listen(_onUrlChanged);
  }

  void _onUrlChanged(String url) {
    if (url.contains('code')) {
      setState(() {
        _isAuth = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return _isAuth
        ? Scaffold(
            appBar: MZAppBar(
              title: 'Github 授权成功',
            ),
          )
        : WebviewScaffold(
            url: 'https://api.luoyangfu.com/auth/github',
            appBar: MZAppBar(
              title: 'Github 授权',
            ),
          );
  }
}
