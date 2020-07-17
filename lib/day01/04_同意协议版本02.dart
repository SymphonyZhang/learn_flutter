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

// StatefulWidget 的使用包含2个类: 继承自StatefulWidget的类(1.创建一个State 2.可以接收父Widget传过来的数据) / State类(状态)

// flag : 状态
// StatefulWidget 不能定义状态 -> 创建一个单独的类，这个类负责维护状态
class YXContentBody extends StatefulWidget {
  YXContentBody({Key key}) : super(key: key);

  @override
  _YXContentBodyState createState() => _YXContentBodyState();
}

class _YXContentBodyState extends State<YXContentBody> {
  var flag = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Checkbox(
            value: flag,
            onChanged: (value) {
              setState(() {
                flag = value;
              });
            },
          ),
          Text(
            '同意协议',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}
