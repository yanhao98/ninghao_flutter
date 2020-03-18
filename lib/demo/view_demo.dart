import 'package:flutter/material.dart';
import 'package:ninghao_flutter/model/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridViewBuilderDemo();
  }
}

class GridViewBuilderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: posts.length,
      itemBuilder: _gridItemBuilder,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150.0,
        // crossAxisCount: 3,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
    );
  }

  Widget _gridItemBuilder(BuildContext context, int index) {
    Post _post = posts[index];
    return Container(
      child: Image.network(
        _post.imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}

class GridViewExtentDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 150.0,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      children: _buildTiles(100),
      // scrollDirection: Axis.horizontal,
    );
  }

  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        alignment: Alignment.center,
        color: Colors.pink,
        child: Text(
          'Item $index',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      );
    });
  }
}

class GridViewCountDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3, // 每一 列/行 个数。
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      children: _buildTiles(100),
      // scrollDirection: Axis.horizontal,
    );
  }

  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        alignment: Alignment.center,
        color: Colors.pink,
        child: Text(
          'Item $index',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      );
    });
  }
}

class PageViewBuilderDemo extends StatelessWidget {
  const PageViewBuilderDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }

  Widget _pageItemBuilder(BuildContext context, int index) {
    final Post _post = posts[index];
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            _post.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(_post.title, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(_post.author),
            ],
          ),
        )
      ],
    );
  }
}

class PageViewDemo extends StatelessWidget {
  const PageViewDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      // pageSnapping: false,
      reverse: true,
      scrollDirection: Axis.vertical,
      onPageChanged: (currentPage) => debugPrint('Page:$currentPage'),
      controller: PageController(
        initialPage: 0, //默认显示第几个页面（默认0）
        keepPage: false,
        // 是否保存当前 Page 的状态，如果保存，下次回复对应保存的 page，initialPage被忽略，如果为 false 。下次总是从 initialPage 开始。
        viewportFraction: 0.85, //默认1，每个页面占可视窗的比例
      ),
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.brown[900],
          child: Text(
            'ONE',
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.green[900],
          child: Text(
            'TWO',
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blueGrey[900],
          child: Text(
            'THREE',
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
