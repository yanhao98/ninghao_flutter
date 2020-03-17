import 'package:flutter/material.dart';
import 'package:ninghao_flutter/model/post.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _buldListItem,
    );
  }

  Widget _buldListItem(BuildContext context, int index) {
    final post = posts[index];
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  post.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 16),
              Text(post.title, style: Theme.of(context).textTheme.headline6),
              Text(post.author, style: Theme.of(context).textTheme.subtitle1),
              SizedBox(height: 16),
            ],
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.white.withOpacity(0.3),
                highlightColor: Colors.white.withOpacity(0.1),
                onTap: () {
                  debugPrint('Tap');
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
