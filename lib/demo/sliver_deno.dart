import 'package:flutter/material.dart';
import 'package:ninghao_flutter/model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverSafeArea(
            sliver: SliverPadding(
              padding: EdgeInsets.all(8.0),
              sliver: SliverListDemo(),
            ),
          ),
        ],
      ),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  const SliverListDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 32.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Material(
                color: Colors.red,
                borderRadius: BorderRadius.circular(50.0), // child有图片后这个圆角会失效
                elevation: 14.0,
                shadowColor: Colors.grey.withOpacity(0.5),
                child: Stack(
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Image.network(
                        posts[index].imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 32.0,
                      left: 32.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            posts[index].title,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            posts[index].title,
                            style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
        childCount: posts.length,
      ),
    );
  }
}

class SliverGridDemo extends StatelessWidget {
  const SliverGridDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 16 / 16,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          );
        },
        childCount: posts.length,
      ),
    );
  }
}
