import 'package:flutter/material.dart';

//Organisms
import './organisms/imageHeader.dart';
import 'organisms/articleBody.dart';

class IndexTemplate extends StatefulWidget {
  IndexTemplate({Key key, this.data}) : super(key: key);
  final Map data;

  @override
  _IndexTemplateState createState() => _IndexTemplateState();
}

class _IndexTemplateState extends State<IndexTemplate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data['title']),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ImageHeaderOrganisms(data: widget.data['header']),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ArticleBodyOrganisms(data: widget.data['body']['articles']),
                Container(
                  width: 300,
                  padding: EdgeInsets.only(
                    top: 0,
                    bottom: 0,
                    right: 0,
                    left: 30.0,
                  ),
                  color: Colors.white,
                  height: 1000,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
