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
        title: Text('商品列表'),
      ),
      body: YXHomeContent(),
    );
  }
}

// Widget是不加 _  : 因为Widget暴露给别人使用
class YXHomeContent extends StatefulWidget {
  final message = '你好啊，李银河';
  @override
  _YXHomeContentState createState() => _YXHomeContentState();
}

/**
 * 为什么Flutter在设计的时候，StatefulWidget的build方法放在State中
 * 1. build出来的Widget是需要依赖State中的变量(状态/数据)
 * 2. 在Flutter的运行过程中：
 * *   Widget是不断的销毁和创建的
 * *   当我们自己的状态发生改变时，并不希望重新创建一个新的State
 * 
 */
class _YXHomeContentState extends State<YXHomeContent> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _getButtons(),
          Text(
            '当前计数: $_counter',
            style: TextStyle(fontSize: 25),
          ),
          Text(
            '传递过来的信息:  ${this.widget.message}',
          ),
        ],
      ),
    );
  }

  Widget _getButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text(
            '+',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          color: Colors.pink,
          onPressed: () {
            print('点击+');
            setState(() {
              _counter++;
            });
          },
        ),
        RaisedButton(
          child: Text(
            '-',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          color: Colors.orange,
          onPressed: () {
            print('点击-');
            setState(() {
              _counter--;
            });
          },
        )
      ],
    );
  }
}
