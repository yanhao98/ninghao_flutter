import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('httpDemo'),
      ),
      body: HttpDemoHome(),
    );
  }
}

class HttpDemoHome extends StatefulWidget {
  @override
  _HttpDemoHomeState createState() => _HttpDemoHomeState();
}

class _HttpDemoHomeState extends State<HttpDemoHome> {
  @override
  void initState() {
    super.initState();
    // fetchPost();
    final post = {'title': 'hello', 'description': 'nice to meet you'};
    // print(post['title']);
    // print(post['description']);

    final postJson = json.encode(post);
    print('1：${post.runtimeType}');
    print('2：${postJson.runtimeType}');

    final postJsonConverted = json.decode(postJson);
    print('3：${postJsonConverted.runtimeType}');

    final postModel = Post.fromJson(postJsonConverted);
    print('4：${postModel.runtimeType}');

    print('5:${postModel.toJson().runtimeType}');
  }

  void fetchPost() async {
    final response =
        await http.get('https://resources.ninghao.net/demo/posts.json');
    print('statusCode：${response.statusCode}');
    print('body：${response.body}');
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Post {
  final String title;
  final String description;

  Post(this.title, this.description);

  Post.fromJson(Map json)
      : title = json['title'],
        description = json['description'];

  Map toJson() => {
        'title': title,
        'description': description,
      };
}
