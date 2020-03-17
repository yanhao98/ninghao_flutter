import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ninghao_flutter/model/post.dart';

class PostShow extends StatelessWidget {
  final Post post;

  const PostShow({Key key, @required this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${post.title}'),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Hero(
            tag: 'postImage${post.title}',
            child: Image.network(post.imageUrl),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(post.title, style: Theme.of(context).textTheme.headline6),
                Text(post.author, style: Theme.of(context).textTheme.subtitle1),
                SizedBox(height: 32.0),
                Text(post.description,
                    style: Theme.of(context).textTheme.bodyText2)
              ],
            ),
          )
        ],
      ),
    );
  }
}
