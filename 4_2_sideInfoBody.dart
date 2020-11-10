import 'package:flutter/material.dart';

//moleculus
import '../moleculus/profile.dart';
import '../moleculus/sideInfoArchives.dart';
import '../moleculus/sideInfoSearch.dart';

class SideInfoBodyOrganisms extends StatelessWidget {
  SideInfoBodyOrganisms({Key key, this.data}) : super(key: key);
  final Map data;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(
            top: 0,
            bottom: 20.0,
            right: 0,
            left: 0,
          ),
          color: Colors.cyan,
          child: Profile(userName: data['userName']),
        ),
        Container(
          padding: EdgeInsets.only(
            top: 10.0,
            bottom: 20.0,
            right: 0,
            left: 0,
          ),
          child: SideInfoSearch(),
        ),
        Container(
          padding: EdgeInsets.only(
            top: 10.0,
            bottom: 20.0,
            right: 0,
            left: 0,
          ),
          child: SideInfoArchives(archives: data['archives']),
        ),
      ],
    );
  }
}
