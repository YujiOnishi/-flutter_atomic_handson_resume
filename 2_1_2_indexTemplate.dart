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
            ArticleBodyOrganisms(data: widget.data['body']['articles']),
          ],
        ),
      ),
    );
  }
}