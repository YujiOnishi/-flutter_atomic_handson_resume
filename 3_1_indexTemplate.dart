import 'package:flutter/material.dart';

//Organisms
import './organisms/imageHeader.dart';
import './organisms/articleBody.dart';
import './organisms/footer.dart';

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
            Container(
              padding: EdgeInsets.only(
                top: 30.0,
                bottom: 30.0,
                right: 0.0,
                left: 0.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.black12,
                    width: 1000,
                    padding: EdgeInsets.only(
                      top: 50.0,
                      bottom: 50.0,
                      right: 50.0,
                      left: 50.0,
                    ),
                    child: ArticleBodyOrganisms(
                        data: widget.data['body']['articles']),
                  ),
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
            ),
            Container(
              padding: EdgeInsets.only(
                top: 0,
                bottom: 30.0,
                right: 0.0,
                left: 0.0,
              ),
              child: FooterOrganisms(data: widget.data['footer']),
            ),
          ],
        ),
      ),
    );
  }
}
