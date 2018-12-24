import 'package:flutter/material.dart';
import 'package:mz_github/beans/organization.dart';
import 'package:mz_github/constants.dart';
import 'package:mz_github/widgets/mz_ink_well.dart';

class MZOrganizationItem extends StatelessWidget {
  final Organization organization;
  final ValueChanged<Organization> onTap;

  const MZOrganizationItem({Key key, this.organization, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MZInkWell(
      onTap: () {
        if (onTap != null) onTap(organization);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        padding: EdgeInsets.symmetric(vertical: 15.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: kBorderColor, width: 1.0),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 80.0,
              height: 80.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(organization.avatarUrl),
                ),
                borderRadius: BorderRadius.circular(kBorderRadius),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Text(
                        organization.login,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: Text(
                        (organization.description == null || organization.description.isEmpty)
                            ? '不存在任何描述'
                            : organization.description,
                        style: TextStyle(
                          color: kIconColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
