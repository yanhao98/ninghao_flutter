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

  @override
  void initState() {
    super.initState();

    animationDemoController = AnimationController(
      duration: Duration(milliseconds: 1000),
      vsync: this,
    );

    animationDemoController.addListener(() {
      print('${animationDemoController.value}');
    });

    animationDemoController.forward();
  }

  @override
  void dispose() {
    animationDemoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
