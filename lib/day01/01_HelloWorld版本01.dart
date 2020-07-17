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
      home: Scaffold(
        appBar: AppBar(
          title: Text('第一个flutter程序'),
        ),
        body: Center(
          child: Text(
            "Hello World",
            style: TextStyle(
              fontSize: 30,
              color: Colors.orange,
            ),
          ),
        ),
      ),
    );
  }
}
