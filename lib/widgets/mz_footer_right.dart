import 'package:flutter/material.dart';

class MZFooterRight extends StatelessWidget {
  final double width;

  const MZFooterRight({Key key, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: Center(
        child: Text(
          'copyright© by mz',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12.0,
          ),
        ),
      ),
    );
  }
}
