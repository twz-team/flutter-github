import 'package:flutter/material.dart';
import 'package:mz_github/stores/app_state.dart';
import 'package:mz_github/stores/module/my.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mz_github/widgets/mz_organization_item.dart';

class MyOrganizationPage extends StatefulWidget {
  @override
  _MyOrganizationPageState createState() => _MyOrganizationPageState();
}

class _MyOrganizationPageState extends State<MyOrganizationPage> {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, MyState>(
      onInit: (store) {
        store.dispatch(MyAction.requestMyOrgList);
      },
      builder: (BuildContext context, vm) {
        return Container(
          child: Column(
            children: vm.orgList
                .map((org) => MZOrganizationItem(
                      organization: org,
                    ))
                .toList(),
          ),
        );
      },
      converter: (store) => store.state.myState,
    );
  }
}
