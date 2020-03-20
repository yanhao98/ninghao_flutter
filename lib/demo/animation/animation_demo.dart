import 'package:flutter/material.dart';

class AnimatinDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimationDemo'),
      ),
      body: AnimationDemoHome(),
    );
  }
}

class AnimationDemoHome extends StatefulWidget {
  @override
  AnimationDemoHomeState createState() => AnimationDemoHomeState();
}

class AnimationDemoHomeState extends State<AnimationDemoHome>
    with TickerProviderStateMixin {
  AnimationController animationDemoController;
  Animation<double> animation;
  Animation<Color> animationColor;
  CurvedAnimation curve;

  @override
  void initState() {
    super.initState();

    animationDemoController = AnimationController(
      // value: 32.0, // 初始值
      // lowerBound: 32.0,
      // upperBound: 100.0,
      duration: Duration(milliseconds: 1000),
      vsync: this,
    );

    curve = CurvedAnimation(
        parent: animationDemoController, curve: Curves.bounceOut);

    animation = Tween(begin: 32.0, end: 100.0).animate(curve);
    animationColor =
        ColorTween(begin: Colors.red, end: Colors.pink).animate(curve);

    // animationDemoController.addListener(() {
    //   // print('${animationDemoController.value}');
    //   setState(() {});
    // });

    animationDemoController.addStatusListener((AnimationStatus status) {
      print(status);
    });

    // animationDemoController.forward();
  }

  @override
  void dispose() {
    animationDemoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: curve,
        builder: (BuildContext context, Widget child) {
          return IconButton(
            icon: Icon(Icons.favorite),
            iconSize: animation.value,
            color: animationColor.value,
            onPressed: () {
              print('现在的状态：${animationDemoController.status}');
              switch (animationDemoController.status) {
                case AnimationStatus.completed:
                  animationDemoController.reverse();
                  break;
                default:
                  animationDemoController.forward();
              }
            },
          );
        },
      ),
    );
  }
}
