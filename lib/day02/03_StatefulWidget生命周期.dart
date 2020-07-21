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

class YXHomePage extends StatefulWidget {
  @override
  _YXHomePageState createState() => _YXHomePageState();
}

class _YXHomePageState extends State<YXHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品列表'),
      ),
      body: Column(
        children: [
          YXHomeContent(),
        ],
      ),
      floatingActionButton: RaisedButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {});
        },
      ),
    );
  }
}

// StatelessWidget的生命周期
/* class YXHomeContent extends StatelessWidget {
  final String message;

  YXHomeContent(this.message) {
    print('构造函数被调用');
  }
  @override
  Widget build(BuildContext context) {
    print('调用build方法');
    return Text(message);
  }
} */

//StatefulWidget的生命周期
class YXHomeContent extends StatefulWidget {
  YXHomeContent() {
    print('1.调用 YXHomeContent 的 constructor 方法');
  }
  @override
  _YXHomeContentState createState() {
    print('2.调用 YXHomeContent 的 createState 方法');
    return _YXHomeContentState();
  }
}

class _YXHomeContentState extends State<YXHomeContent> {
  int _counter = 0;

  _YXHomeContentState() {
    print('3.调用 _YXHomeContentState 的 constructor 方法');
  }

  @override
  void didUpdateWidget(YXHomeContent oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('调用 _YXHomeContentState 的 didUpdateWidget 方法');
  }

  @override
  void initState() {
    //强调：这里是必须调用super
    super.initState();
    print('4.调用 _YXHomeContentState 的 initState 方法');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('调用 _YXHomeContentState 的 didChangeDependencies 方法');
  }

  @override
  Widget build(BuildContext context) {
    print('5.调用 _YXHomeContentState 的 build 方法');
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              _counter++;
            });
          },
        ),
        Text('数字：$_counter'),
      ],
    );
  }

  @override
  void dispose() {
    //强调：这里是必须调用super
    print('6.调用 _YXHomeContentState 的 dispose 方法');
    super.dispose();
  }
}
