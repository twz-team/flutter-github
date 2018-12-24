import 'package:flutter/material.dart';

const textStyle = TextStyle(
  color: Colors.white,
  fontSize: 16.0,
);

class MZLabelInfo extends StatelessWidget {
  final title;
  final String info;
  final Color color;
  final double fontSize;

  const MZLabelInfo({Key key, this.title, this.info, this.color, this.fontSize}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      child: Row(
        children: <Widget>[
          Container(
            child: title is String ? Text(title, style: textStyle) : title,
          ),
          Container(
            margin: EdgeInsets.only(left: 4.0),
            child: Text(info, style: textStyle.copyWith(color: color, fontSize: fontSize)),
          ),
        ],
      ),
    );
  }
}
