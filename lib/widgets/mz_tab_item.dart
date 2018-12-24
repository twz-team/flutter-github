import 'package:flutter/material.dart';

class MZTabItem extends StatelessWidget {
  final String title;

  const MZTabItem({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      margin: EdgeInsets.only(top: 8.0),
      child: Text(title),
    );
  }
}
