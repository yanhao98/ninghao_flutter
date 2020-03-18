import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ContainerBoxDecorationDemo();
  }
}

class ContainerBoxDecorationDemo extends StatelessWidget {
  const ContainerBoxDecorationDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://resources.ninghao.org/images/say-hello-to-barry.jpg'),
          alignment: Alignment.topCenter,
          // repeat: ImageRepeat.repeatY,
          fit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(Colors.indigoAccent[400], BlendMode.hardLight),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(
              Icons.pool,
              size: 32.0,
              color: Colors.white,
            ),
            // color: Colors.deepOrangeAccent,
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            height: 90.0,
            width: 90.0,
            decoration: BoxDecoration(
              color: Colors.deepOrangeAccent,
              border: Border.all(
                color: Colors.blue,
                width: 3.0,
                style: BorderStyle.solid,
              ),
              // borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.pink,
                  blurRadius: 25.0,
                  spreadRadius: -9.0,
                  offset: Offset(0, 16.0),
                )
              ],
              shape: BoxShape.circle,
              // gradient: RadialGradient(
              //   colors: [
              //     Colors.pinkAccent,
              //     Colors.deepPurple,
              //   ],
              // ),
              gradient: LinearGradient(
                colors: [
                  Colors.pinkAccent,
                  Colors.deepPurple,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  const RichTextDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: 'ninghao',
          style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontSize: 34.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w100,
          ),
          children: [
            TextSpan(
                text: '.net',
                style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.grey,
                )),
          ]),
    );
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );

  final String _author = '李白';
  final String _title = '将进酒';

  @override
  Widget build(BuildContext context) {
    return Text(
      '《 $_title 》 —— $_author。君不见黄河之水天上来，奔流到海不复回。君不见高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
