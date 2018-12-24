import 'package:flutter/material.dart';

class MZColorCircle extends StatelessWidget {
  final Color color;
  final double size;

  const MZColorCircle({Key key, this.color, @required this.size}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color ?? Color(0xFFFFFFFF),
        borderRadius: BorderRadius.all(Radius.circular(size / 2)),
      ),
    );
  }
}
