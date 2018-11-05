import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mz_github/pages/auth_page.dart';
import 'package:mz_github/widgets/mz_ink_well.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
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
                                child: Text(
                                  '授权',
                                  style: TextStyle(color: Colors.white),
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
                  child: Container(
                    width: viewportsConstraits.maxWidth,
                    child: Center(
                      child: Text(
                        'copyright© by mz',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _onTapAuth() {
    Navigator.of(context).push(CupertinoPageRoute(builder: (context) => AuthPage()));
  }
}
