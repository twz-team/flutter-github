import 'package:flutter/material.dart';
import 'package:mz_github/widgets/mz_resposity_item.dart';

class MyRepositoryPage extends StatefulWidget {
  @override
  _MyRepositoryPageState createState() => _MyRepositoryPageState();
}

class _MyRepositoryPageState extends State<MyRepositoryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            MZResposityItem(),
            MZResposityItem(),
            MZResposityItem(),
          ],
        ),
      ),
    );
  }
}
