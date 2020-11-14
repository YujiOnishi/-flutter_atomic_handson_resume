import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';
import 'package:badges/badges.dart';

import './pages/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'Flutter Atomic Design'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _text = '';

  void _handleText(String e) {
    setState(() {
      _text = e;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'images/nature.jpg',
              width: 4000,
              height: 500,
              fit: BoxFit.none,
            ),
            Container(
              padding: EdgeInsets.only(
                top: 30.0,
                bottom: 30.0,
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            top: 0,
                            bottom: 10.0,
                            right: 0,
                            left: 0,
                          ),
                          child: StyledText(
                            text: '<alarm/> 2020-11-14',
                            style: Theme.of(context).textTheme.caption,
                            styles: {
                              'alarm': IconStyle(Icons.alarm),
                            },
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: 10.0,
                            bottom: 10.0,
                            right: 0,
                            left: 0,
                          ),
                          child: Text(
                            'Flutter Atomic Designへようこそ！',
                            style: Theme.of(context).textTheme.headline3,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: 10.0,
                            bottom: 10.0,
                            right: 0,
                            left: 0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  top: 0,
                                  bottom: 0,
                                  right: 10.0,
                                  left: 0,
                                ),
                                child: Badge(
                                  toAnimate: false,
                                  shape: BadgeShape.square,
                                  badgeColor: Colors.white54,
                                  borderRadius: BorderRadius.circular(8),
                                  badgeContent: Text(
                                    'Flutter',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  top: 0,
                                  bottom: 0,
                                  right: 10.0,
                                  left: 0,
                                ),
                                child: Badge(
                                  toAnimate: false,
                                  shape: BadgeShape.square,
                                  badgeColor: Colors.white54,
                                  borderRadius: BorderRadius.circular(8),
                                  badgeContent: Text(
                                    'デザイン',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  top: 0,
                                  bottom: 0,
                                  right: 10.0,
                                  left: 0,
                                ),
                                child: Badge(
                                  toAnimate: false,
                                  shape: BadgeShape.square,
                                  badgeColor: Colors.white54,
                                  borderRadius: BorderRadius.circular(8),
                                  badgeContent: Text(
                                    '設計手法',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: 50.0,
                            bottom: 30.0,
                            right: 0,
                            left: 0,
                          ),
                          child: Text(
                            '今日はflutterを利用してアトミックデザインについて学びます。',
                            style: Theme.of(context).textTheme.bodyText1,
                            softWrap: true,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: 0,
                            bottom: 0,
                            right: 0,
                            left: 0,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  top: 0,
                                  bottom: 0,
                                  right: 0,
                                  left: 0,
                                ),
                                child: Text(
                                  'Atomic Designとは？',
                                  style: Theme.of(context).textTheme.headline5,
                                  softWrap: true,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  top: 0,
                                  bottom: 0,
                                  right: 0,
                                  left: 0,
                                ),
                                child: Divider(
                                  color: Colors.grey,
                                  height: 20,
                                  thickness: 1,
                                  indent: 0,
                                  endIndent: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: 0,
                            bottom: 0,
                            right: 0,
                            left: 0,
                          ),
                          child: Text(
                            'UIデザインの銀の弾丸と呼ばれている………',
                            style: Theme.of(context).textTheme.bodyText1,
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 300,
                    padding: EdgeInsets.only(
                      top: 0,
                      bottom: 0,
                      right: 0,
                      left: 30.0,
                    ),
                    child: Column(
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
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  top: 0,
                                  bottom: 10.0,
                                  right: 0,
                                  left: 0,
                                ),
                                child: Text(
                                  'プロフィール',
                                  style: Theme.of(context).textTheme.subtitle1,
                                  softWrap: true,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  top: 10.0,
                                  bottom: 0,
                                  right: 0,
                                  left: 0,
                                ),
                                child: StyledText(
                                  text: '<link href="">zutai_dekame</link>',
                                  style: Theme.of(context).textTheme.subtitle2,
                                  softWrap: true,
                                  styles: {
                                    'link': ActionTextStyle(
                                      decoration: TextDecoration.underline,
                                      onTap: (_, attrs) => () {},
                                    ),
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: 10.0,
                            bottom: 20.0,
                            right: 0,
                            left: 0,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    top: 0, bottom: 0, right: 0, left: 0),
                                child: Text(
                                  '検索',
                                  style: Theme.of(context).textTheme.subtitle1,
                                  softWrap: true,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  top: 0,
                                  bottom: 0,
                                  right: 0,
                                  left: 0,
                                ),
                                child: TextField(
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  maxLines: 1,
                                  decoration: const InputDecoration(
                                    hintText: '記事を検索',
                                  ),
                                  //パスワード
                                  onChanged: _handleText,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: 10.0,
                            bottom: 20.0,
                            right: 0,
                            left: 0,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  top: 0,
                                  bottom: 10.0,
                                  right: 0,
                                  left: 0,
                                ),
                                child: Text(
                                  'アーカイブ',
                                  style: Theme.of(context).textTheme.subtitle1,
                                  softWrap: true,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  top: 0,
                                  bottom: 10.0,
                                  right: 0,
                                  left: 0,
                                ),
                                child: Text(
                                  'アーカイブはありません',
                                  style: Theme.of(context).textTheme.subtitle2,
                                  softWrap: true,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 0,
                bottom: 30.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'Flutter Atomic Design',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ),
                  Text(
                    'Powered By Zutai_Dekame',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
