import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mz_github/widgets/mz_app_bar.dart';
import 'package:mz_github/widgets/mz_ink_well.dart';

class ListExampleRoutes extends StatefulWidget {
  @override
  _ListExampleRoutesState createState() => _ListExampleRoutesState();
}

class _ListExampleRoutesState extends State<ListExampleRoutes> {
  var _value = '';
  TextEditingController _textEditorController;

  @override
  void initState() {
    super.initState();
    _textEditorController = TextEditingController(text: _value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MZAppBar(
        title: '示例列表',
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, cors) {
            return Container(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          controller: _textEditorController,
                          decoration: InputDecoration(
                            suffixIcon: Container(
                              child: _textEditorController.text.isEmpty
                                  ? null
                                  : MZInkWell(
                                      child: Icon(Icons.clear),
                                      onTap: () {
                                        _textEditorController.clear();
                                      },
                                    ),
                            ),
                          ),
                          onChanged: (val) {
                            setState(() {
                              _value = val;
                            });
                          },
                        ),
                      ),
                      // Container(
                      //   width: 20.0,
                      //   child: MZInkWell(
                      //     child: Icon(Icons.clear),
                      //   ),
                      // ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
