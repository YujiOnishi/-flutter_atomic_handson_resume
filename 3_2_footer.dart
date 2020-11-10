import 'package:flutter/material.dart';

//atoms
import '../atoms/footerBlogTitle.dart';
import '../atoms/footerUserName.dart';

class FooterOrganisms extends StatelessWidget {
  FooterOrganisms({Key key, this.data}) : super(key: key);
  final Map data;

  @override
  Widget build(BuildContext context) {
    String title = data['title'];
    String userName = data['userName'];

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            top: 0,
            bottom: 2.5,
            right: 0,
            left: 0,
          ),
          child: FooterBlogTitle(title: title),
        ),
        Container(
          padding: EdgeInsets.only(
            top: 2.5,
            bottom: 0,
            right: 0,
            left: 0,
          ),
          child: FooterUserName(userName: userName),
        ),
      ],
    );
  }
}
