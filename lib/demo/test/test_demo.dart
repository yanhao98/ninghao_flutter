import 'package:flutter/material.dart';

class TestDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TestDemo'),
      ),
    );
  }
}

class MyTestDemo {
  static greet(String name) {
    return 'hello $name';
  }
}
// flutter test
// flutter test test/my_deme_test.dart
// flutter test test/my_deme_test.dart
