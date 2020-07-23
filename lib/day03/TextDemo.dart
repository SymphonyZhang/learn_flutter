import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: YXHomePage(),
    );
  }
}

class YXHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('基础Widget'),
      ),
      body: YXHomeContent(),
    );
  }
}

class YXHomeContent extends StatefulWidget {
  @override
  _YXHomeContentState createState() => _YXHomeContentState();
}

class _YXHomeContentState extends State<YXHomeContent> {
  @override
  Widget build(BuildContext context) {
    //富文本
    return Text.rich(
      TextSpan(
        text: 'Hello World',
        style: TextStyle(
          fontSize: 20,
          color: Colors.red,
        ),
      ),
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
