import 'package:flutter/material.dart';
import 'dart:async';

import 'package:rxdart/rxdart.dart';

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

    // Stream<String> _observable =
    // Stream.fromIterable(['hello', '您好']);
    // Stream.fromFuture(Future.value('hello ~'));
    // Stream.value('hello ~');
    // Stream.periodic(Duration(seconds: 1), (x) => x.toString());

    // _observable.listen(print);
    ReplaySubject<String> _subject = ReplaySubject<String>(maxSize: 1);
    _subject.add('hello');
    _subject.add('hello2');
    _subject.listen((value) {
      print('listen 1: $value');
    });
    _subject.listen((value) {
      print('listen 2: ${value.toUpperCase()}');
    });
    _subject.add('hola');

    _subject.close();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
