import 'package:flutter/material.dart';
import 'package:ninghao_flutter/model/post.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      appBar: AppBar(title: Text('NINGHAO'), elevation: 0.0),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: _buldListItem,
      ),
    );
  }

  Widget _buldListItem(BuildContext context, int index) {
    final post = posts[index];
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(post.imageUrl),
          SizedBox(height: 16),
          Text(post.title, style: Theme.of(context).textTheme.headline6),
          Text(post.author, style: Theme.of(context).textTheme.subtitle1),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}

class Hello extends StatelessWidget {
  const Hello({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'hello',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );
  }
}
