import 'package:flutter/material.dart';

import 'demo/listview_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Home(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NINGHAO'),
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(Icons.menu), onPressed: () => debugPrint('菜单按钮')),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search), onPressed: () => debugPrint('搜索按钮')),
          IconButton(
              icon: Icon(Icons.more_horiz), onPressed: () => debugPrint('更多按钮'))
        ],
      ),
      body: null,
    );
  }
}
