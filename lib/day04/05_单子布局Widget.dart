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
    return Container(
      //color: Colors.black,
      width: 200,
      height: 200,
      alignment: Alignment(0, 0),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(10),
      //transform: Matrix4.rotationZ(50),
      /* child: Icon(
        Icons.pets,
        size: 50,
        color: Colors.pink,
      ), */
      child: Text(
        'Hello world',
        style: TextStyle(color: Colors.white),
      ),
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(
          width: 5,
          color: Colors.lightGreen,
        ),
        //borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
            color: Colors.lightGreenAccent,
            offset: Offset(10, 10), //偏移
            spreadRadius: 5, //延伸
            blurRadius: 10, //模糊度
          ),
          BoxShadow(
            color: Colors.lightBlueAccent,
            offset: Offset(-10, 10),
            spreadRadius: 5,
            blurRadius: 10,
          ),
        ],
        //渐变
        gradient: LinearGradient(
          colors: [
            Colors.blue,
            Colors.green,
          ],
        ),
      ),
    );
  }
}

class PaddingDemo extends StatelessWidget {
  const PaddingDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Text(
        '你好啊，李银河',
        style: TextStyle(fontSize: 30, backgroundColor: Colors.red),
      ),
    );
  }
}

class AlignDemo extends StatelessWidget {
  const AlignDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(1, 1),
      widthFactor: 5,
      heightFactor: 5,
      child: Icon(
        Icons.pets,
        size: 50,
      ),
    );
  }
}
