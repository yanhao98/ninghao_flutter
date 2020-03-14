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
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5), // 高亮颜色
        splashColor: Colors.white70, // 水波纹颜色
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('NINGHAO'),
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => debugPrint('菜单按钮'),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search), onPressed: () => debugPrint('搜索按钮')),
            IconButton(
                icon: Icon(Icons.more_horiz),
                onPressed: () => debugPrint('更多按钮')),
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: [
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(children: [
          Icon(Icons.local_florist, size: 128, color: Colors.black12),
          Icon(Icons.change_history, size: 128, color: Colors.black12),
          Icon(Icons.directions_bike, size: 128, color: Colors.black12),
        ]),
      ),
    );
  }
}
