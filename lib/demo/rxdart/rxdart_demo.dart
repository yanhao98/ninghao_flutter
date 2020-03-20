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
  PublishSubject<String> _textFieldSubject;

  @override
  void initState() {
    super.initState();

    _textFieldSubject = PublishSubject<String>();
    _textFieldSubject.map((item) => '处理后的数据：$item').listen((data) {
      print(data);
    });

    // Stream<String> _observable =
    // Stream.fromIterable(['hello', '您好']);
    // Stream.fromFuture(Future.value('hello ~'));
    // Stream.value('hello ~');
    // Stream.periodic(Duration(seconds: 1), (x) => x.toString());

    // _observable.listen(print);
    // PublishSubject<String> _subject = PublishSubject<String>();
    // BehaviorSubject<String> _subject = BehaviorSubject<String>();
    // ReplaySubject<String> _subject = ReplaySubject<String>(maxSize: 1);
    // _subject.add('hello');
    // _subject.add('hello2');
    // _subject.listen((value) {
    //   print('listen 1: $value');
    // });
    // _subject.listen((value) {
    //   print('listen 2: ${value.toUpperCase()}');
    // });
    // _subject.add('hola');

    // _subject.close();
  }

  @override
  void dispose() {
    _textFieldSubject.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(primaryColor: Colors.black),
      child: TextField(
        onChanged: (value) {
          _textFieldSubject.add('input: $value');
        },
        onSubmitted: (value) {
          _textFieldSubject.add('submit: $value');
        },
        decoration: InputDecoration(
          labelText: 'Title',
          filled: true,
        ),
      ),
    );
  }
}
