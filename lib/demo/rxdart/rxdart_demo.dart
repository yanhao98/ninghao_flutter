import 'package:flutter/material.dart';
import 'dart:async';

class RxDartDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('RxDartDemo'),
      ),
      body: RxDartDemoHome(),
    );
  }
}

class RxDartDemoHome extends StatefulWidget {
  @override
  _RxDartDemoHomeState createState() => _RxDartDemoHomeState();
}

class _RxDartDemoHomeState extends State<RxDartDemoHome> {
  @override
  void initState() {
    super.initState();

    Stream<String> _observable = Stream.fromIterable(['hello', '您好']);

    _observable.listen(
      (data) {
        print(data);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
