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
      //悬浮按钮
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      //   onPressed: () => print('FloatingActionButton click'),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
    return StackDemo2();
  }
}

class StackDemo2 extends StatefulWidget {
  const StackDemo2({
    Key key,
  }) : super(key: key);

  @override
  _StackDemo2State createState() => _StackDemo2State();
}

class _StackDemo2State extends State<StackDemo2> {
  bool _isFavor = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset('assets/images/lia.jpg'),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            color: Color.fromARGB(127, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '刀锋舞者 —— 艾瑞莉娅',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                /* Icon(
                  Icons.favorite,
                  color: Colors.white,
                ), */
                IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: _isFavor ? Colors.red : Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        _isFavor = !_isFavor;
                      });
                    })
              ],
            ),
          ),
        )
      ],
    );
  }
}

class StackDemo1 extends StatelessWidget {
  const StackDemo1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      /**
       * Stack默认的大小是包裹内容的
       *   - alignment：从什么位置开始排布所有的子widget
       *   - fit：expand (很少用)将子元素拉伸到尽可能大
       *   - overflow: 超出部分如何处理
       * Positioned
       */
      alignment: AlignmentDirectional.bottomStart,
      //fit: StackFit.expand,
      overflow: Overflow.visible,
      children: <Widget>[
        Image.asset('assets/images/lia.jpg', width: 300, fit: BoxFit.cover),
        Positioned(
            left: 20,
            bottom: -50,
            child: Container(width: 150, height: 150, color: Colors.red)),
        Positioned(
          child: Text(
            '艾瑞莉娅',
            style: TextStyle(fontSize: 20, color: Colors.green),
          ),
          right: 10,
          bottom: 20,
        ),
      ],
    );
  }
}

class ExpandedDemo extends StatelessWidget {
  const ExpandedDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        textBaseline: TextBaseline.ideographic,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          /**
           * Flexible中的属性
           *   - flex
           * Expanded(更多) -> Flexible(fit: FlexFit.tight) 既可以拉伸(没满屏去满屏)也可以收缩(超屏收缩)
           *
           * 空间分配问题 跟宽度没关系，只跟flex有关系(flex 默认为 1)
           */
          Expanded(child: Container(width: 150, height: 60, color: Colors.red)),
          Expanded(
              child: Container(width: 200, height: 100, color: Colors.green)),
          Container(width: 90, height: 80, color: Colors.blue),
          Container(width: 50, height: 120, color: Colors.orange),
        ],
      ),
    );
  }
}

class ButtonRowDemo extends StatelessWidget {
  const ButtonRowDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.red,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(Icons.bug_report),
          Text('bug report'),
        ],
      ),
      onPressed: () => print('click the button'),
    );
  }
}
