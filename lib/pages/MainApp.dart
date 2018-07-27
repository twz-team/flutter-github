import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainPageStat();
}

class _MainPageStat extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter for github",
      theme: ThemeData(primaryColor: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("home"),
        ),
        body: Container(
            // todo

            ),
      ),
    );
  }
}
