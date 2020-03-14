import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          IconBadge(Icons.pool),
          IconBadge(Icons.beach_access, size: 64),
          IconBadge(Icons.airplanemode_active),
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  const IconBadge(this.icon, {Key key, this.size = 32.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      color: Colors.pink,
      height: size + 60,
      width: size + 60,
    );
  }
}
