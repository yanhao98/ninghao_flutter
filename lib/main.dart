import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ninghao_flutter/demo/basic_demo.dart';
import 'package:ninghao_flutter/demo/bloc/bloc_demo.dart';
import 'package:ninghao_flutter/demo/form_demo.dart';
import 'package:ninghao_flutter/demo/http/http_demo.dart';
import 'package:ninghao_flutter/demo/i18n/i18n_demo.dart';
import 'package:ninghao_flutter/demo/i18n/map/my_localizations.dart';
import 'package:ninghao_flutter/demo/material_components.dart';
import 'package:ninghao_flutter/demo/navigator_demo.dart';
import 'package:ninghao_flutter/demo/sliver_deno.dart';

import 'demo/animation/animation_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/listview_demo.dart';
import 'demo/rxdart/rxdart_demo.dart';
import 'demo/state/state_management_demo.dart';
import 'demo/stream/stream_demo.dart';
// import 'demo/view_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale('zh', 'CN'),
      // localeResolutionCallback: (locale, supportedLocales) {
      //   return Locale('en', 'US');
      // },
      localizationsDelegates: [
        MyLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', 'US'),
        Locale('zh', 'CN'),
      ],
      debugShowCheckedModeBanner: true,
      // home: NavigatorDemo(),
      initialRoute: '/i18n',
      routes: {
        '/': (context) => Home(),
        // '/': (context) => NavigatorDemo(),
        '/about': (context) => Page(title: 'About'),
        '/form': (context) => FormDemo(),
        '/mdc': (context) => MaterialComponents(),
        '/state-management': (context) => StateManagementDemo(),
        '/stream': (context) => StreamDemo(),
        '/rxdart': (context) => RxDartDemo(),
        '/bloc': (context) => BlocDemo(),
        '/http': (context) => HttpDemo(),
        '/animation': (context) => AnimatinDemo(),
        '/i18n': (context) => I18nDemo(),
      },
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        // primarySwatch: Colors.yellow,
        primaryColor: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5), // 高亮颜色
        splashColor: Colors.white70, // 水波纹颜色
        // accentColor: Color.fromRGBO(3, 54, 255, 1.0),
        accentColor: Colors.pink,
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('NINGHAO'),
          elevation: 0.0,
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   onPressed: () => debugPrint('菜单按钮'),
          // ),
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
              Tab(icon: Icon(Icons.view_quilt)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListViewDemo(),
            BasicDemo(),
            LayoutDemo(),
            // ViewDemo(),
            SliverDemo(),
          ],
        ),
        drawer: DrawerDemo(),
        endDrawer: Text('This is a endDrawer'),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
