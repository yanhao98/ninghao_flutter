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
      duration: Duration(milliseconds: 3000),
      value: 32.0, // 初始值
      lowerBound: 0.0,
      upperBound: 100.0,
      vsync: this,
    );

    animationDemoController.addListener(() {
      // print('${animationDemoController.value}');
      setState(() {});
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
      child: ActionChip(
        label: Text('${animationDemoController.value}'),
        onPressed: () {
          animationDemoController.forward();
        },
      ),
    );
  }
}
