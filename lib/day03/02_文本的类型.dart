import 'package:flutter/material.dart';

//富文本
class TextRichDemo extends StatelessWidget {
  const TextRichDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
              text: 'Hello World',
              style: TextStyle(fontSize: 20, color: Colors.red)),
          TextSpan(
              text: 'Hello flutter',
              style: TextStyle(fontSize: 20, color: Colors.green)),
          WidgetSpan(child: Icon(Icons.favorite, color: Colors.red)),
          TextSpan(
              text: 'Hello Dart',
              style: TextStyle(fontSize: 20, color: Colors.blue)),
          TextSpan(
              text: 'Hello Symphony',
              style: TextStyle(fontSize: 20, color: Colors.pink)),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}

//普通Text
class TextDemo extends StatelessWidget {
  const TextDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '《定风波》 苏轼 莫听穿林打叶声，何妨吟啸且徐行。竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。',
      textAlign: TextAlign.center,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      //textScaleFactor: 1.5,
      style: TextStyle(
        fontSize: 20.0,
        color: Colors.red,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
