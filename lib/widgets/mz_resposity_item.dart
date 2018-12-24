import 'package:flutter/material.dart';
import 'package:mz_github/constants.dart';
import 'package:mz_github/widgets/mz_color_circle.dart';
import 'package:mz_github/widgets/mz_label_info.dart';


class MZResposityItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: kBorderColor,
            width: 1.0,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 15.0),
            child: Icon(Icons.book, color: kIconColor),
          ),
          Expanded(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Text(
                          'zsirfs/',
                          style: TextStyle(
                            color: kLinkColor,
                            fontSize: kLinkSize,
                          ),
                        ),
                        Text(
                          'now-example',
                          style: TextStyle(
                            color: kLinkColor,
                            fontWeight: FontWeight.w600,
                            fontSize: kLinkSize,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      'Aliquid magni neque et eum porro aut. Quam facere repellendus. Est ratione enim quasi voluptates provident tempora vel. Cupiditate quis pariatur velit et similique est voluptates enim.',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: kIconColor,
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        MZLabelInfo(title: Icon(Icons.star), info: '2', color: Colors.black54),
                        MZLabelInfo(
                          title: MZColorCircle(size: 16.0, color: Color(0xFF00B4AB)),
                          info: 'Dart',
                          color: Colors.black54,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
