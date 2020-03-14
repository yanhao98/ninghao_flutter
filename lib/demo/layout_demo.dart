import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 16.0 / 9.0,
            child: Container(
              color: Colors.pinkAccent,
            ),
          )
        ],
      ),
    );
  }
}

class StackDemo extends StatelessWidget {
  const StackDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
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
              color: Colors.orange,
              // borderRadius: BorderRadius.circular(8.0),
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  Colors.yellow,
                  Colors.pink,
                ],
              ),
            ),
            child: Icon(
              Icons.brightness_2,
              color: Colors.white,
              size: 32.0,
            ),
          ),
        ),
        Positioned(
          right: 20.0,
          top: 20.0,
          child:
              Icon(Icons.airplanemode_active, color: Colors.white, size: 16.0),
        ),
        Positioned(
          right: 40.0,
          top: 60.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 18.0),
        ),
        Positioned(
          right: 20.0,
          top: 120.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 20.0),
        ),
        Positioned(
          right: 70.0,
          top: 180.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 16.0),
        ),
        Positioned(
          right: 30.0,
          top: 230.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 18.0),
        ),
        Positioned(
          right: 90.0,
          bottom: 20.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 16.0),
        ),
        Positioned(
          right: 4.0,
          bottom: -4.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 16.0),
        ),
      ],
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
