/*
 * @Author: zhenglfsir@gmail.com
 * @Date: 2018-11-02 23:33:41
 * @Last Modified by: zhenglfsir@gmail.com
 * @Last Modified time: 2018-11-02 23:35:06
 * 增加自定义appbar
 * 默认状态栏为透明色沉浸式
 */
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:mz_github/widgets/mz_ink_well.dart';

const double _kNavBarPersistentHeight = 44.0;

const appBarTitleStyle = TextStyle(
  fontSize: 15.0,
  color: Colors.white,
);

class MZAppBar extends StatefulWidget implements PreferredSizeWidget {
  MZAppBar({
    double size,
    this.title,
    this.trailng,
    this.bottom,
    this.leading,
  })  : this.size = size ?? 20.0,
        preferredSize =
            Size.fromHeight(_kNavBarPersistentHeight + (bottom?.preferredSize?.height ?? 0.0));

  final double size;
  final String title;
  final Widget trailng;
  final Widget leading;

  @override
  _MZAppBarState createState() => _MZAppBarState();

  @override
  final Size preferredSize;

  final PreferredSizeWidget bottom;
}

class _MZAppBarState extends State<MZAppBar> {
  SystemUiOverlayStyle _overlayStyle = SystemUiOverlayStyle.light;

  MediaQueryData get mediaData => MediaQuery.of(context);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      container: true,
      explicitChildNodes: true,
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: _overlayStyle,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: <Color>[Colors.black54, Colors.black],
              tileMode: TileMode.clamp,
            ),
          ),
          padding: EdgeInsets.only(top: mediaData.padding.top - 4.0),
          child: Column(
            children: <Widget>[
              Container(
                height: _kNavBarPersistentHeight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 88.0,
                      padding: EdgeInsets.only(left: 10.0),
                      child: Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: widget.leading ??
                            MZInkWell(
                              child: Container(
                                alignment: AlignmentDirectional.centerStart,
                                width: 44.0,
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                  size: widget.size,
                                ),
                              ),
                              onTap: () {
                                Navigator.maybePop(context);
                              },
                            ),
                      ),
                    ),
                    Container(
                      child: Text(
                        widget.title,
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.white),
                      ),
                    ),
                    Container(
                        width: 88.0,
                        padding: EdgeInsets.only(right: 10.0),
                        child: Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: Container(
                            child: widget.trailng,
                          ),
                        )),
                  ],
                ),
              ),
              Container(
                child: widget.bottom,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
