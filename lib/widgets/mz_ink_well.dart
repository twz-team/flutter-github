/*
 * @Author: zhenglfsir@gmail.com
 * @Date: 2018-11-02 23:33:05
 * @Last Modified by: zhenglfsir@gmail.com
 * @Last Modified time: 2018-11-02 23:33:28
 * 去除默认点击效果
 */
import 'package:flutter/material.dart';

class MZInkWell extends StatelessWidget {
  final Widget child;
  final VoidCallback onDoubleTap;
  final ValueChanged<bool> onHighlightChanged;
  final VoidCallback onTap;
  final VoidCallback onLongPress;
  final VoidCallback onTapCancel;
  final GestureTapDownCallback onTapDown;

  const MZInkWell({
    Key key,
    @required this.child,
    this.onDoubleTap,
    this.onHighlightChanged,
    this.onTap,
    this.onLongPress,
    this.onTapCancel,
    this.onTapDown,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onDoubleTap: onDoubleTap,
        onHighlightChanged: onHighlightChanged,
        onTap: onTap,
        onLongPress: onLongPress,
        onTapCancel: onTapCancel,
        onTapDown: onTapDown,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        child: child,
      ),
    );
  }
}
