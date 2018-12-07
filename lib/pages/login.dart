import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mz_github/pages/auth.dart';
import 'package:mz_github/stores/app_actions.dart';
import 'package:mz_github/stores/app_state.dart';
import 'package:mz_github/widgets/mz_ink_well.dart';
import 'package:mz_github/widgets/mz_footer_right.dart';

class LoginPage extends StatefulWidget {
  final bool auth;
  final String token;

  const LoginPage({Key key, this.auth, this.token}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin {
  Animation<Color> _animation;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this);
    _animation = _animationController.drive(Tween<Color>(begin: Colors.white, end: Colors.black));
    if (widget.auth != null && widget.auth) _prepare();
  }

  void _prepare() async {
    // AppState.of(context).dispatch(InitAppAction.requestInitApp);
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, String>(
      converter: (store) => store.state.token,
      builder: (context, token) {
        return LayoutBuilder(
          builder: (context, viewportsConstraits) {
            return Scaffold(
              body: Container(
                height: viewportsConstraits.maxHeight,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: <Color>[Colors.black54, Colors.black],
                  ),
                ),
                child: Stack(
                  children: <Widget>[
                    SafeArea(
                      child: Center(
                        child: Container(
                          height: viewportsConstraits.maxHeight / 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: 80.0,
                                height: 80.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/logo.jpeg'),
                                  ),
                                ),
                              ),
                              MZInkWell(
                                onTap: _onTapAuth,
                                child: Container(
                                  height: 40.0,
                                  width: viewportsConstraits.maxWidth * 0.6,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white, width: 1.0),
                                    borderRadius: BorderRadius.all(Radius.circular(40.0)),
                                  ),
                                  child: Center(
                                    child: widget.auth == null || !widget.auth
                                        ? Text(
                                            '授权',
                                            style: TextStyle(color: Colors.white),
                                          )
                                        : Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Container(
                                                width: 20,
                                                height: 20,
                                                child: CircularProgressIndicator(
                                                  backgroundColor: Colors.transparent,
                                                  valueColor: _animation,
                                                  strokeWidth: 1.5,
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(left: 10),
                                                child: Text(
                                                  '数据加载中...$token',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: MediaQuery.of(context).padding.bottom + 10.0,
                      child: MZFooterRight(width: viewportsConstraits.maxWidth),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  void _onTapAuth() {
    if (widget.auth == null || !widget.auth)
      Navigator.of(context).push(CupertinoPageRoute(builder: (context) => AuthPage()));
  }
}
