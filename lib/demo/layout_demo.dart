import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          SizedBox(
            width: 200.0,
            height: 300.0,
            child: Container(
              alignment: Alignment(0, -0.9),
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Icon(
                Icons.ac_unit,
                color: Colors.white,
                size: 32.0,
              ),
            ),
          ),
          SizedBox(
            height: 32.0,
          ),
          SizedBox(
            width: 100.0,
            height: 100.0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Icon(
                Icons.brightness_2,
                color: Colors.white,
                size: 32.0,
              ),
            ),
          )
          // IconBadge(Icons.beach_access, size: 64),
          // IconBadge(Icons.airplanemode_active),
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
