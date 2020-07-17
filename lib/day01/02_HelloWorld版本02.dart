import 'package:flutter/material.dart';

main() => runApp(MyApp());

/**
 * Widget：
 * 有状态的Widget: StatefulWidget 在运行过程中有一些状态(data)需要改变
 * 无状态的Widget: StatelessWidget 内容是确定名优状态(data)的改变
 */
class MyApp extends StatelessWidget {
  //build方法
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
        title: Text('第一个flutter程序'),
      ),
      body: YXContentBody(),
    );
  }
}

class YXContentBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Hello World",
        style: TextStyle(
          fontSize: 30,
          color: Colors.orange,
        ),
      ),
    );
  }
}
