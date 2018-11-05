import 'package:flutter/material.dart';
import 'package:mz_github/pages/login_page.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainPageStat();
}

class _MainPageStat extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black),
      home: LoginPage(),
    );
  }
}
