import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //1.RaisButton  凸起按钮
        RaisedButton(
          child: Text('RaisedButton'),
          textColor: Colors.red,
          color: Colors.yellow,
          onPressed: () => print('RaisButton Click'),
        ),
        //2.FlatButton  扁平按钮
        FlatButton(
          child: Text('FlatButton'),
          color: Colors.purple[100],
          onPressed: () => print('FlatButton Click'),
          onLongPress: () => print("AAAAAAAAAAAAAAAAAAAAAAAAA"),
        ),
        //3.OutlineButton 带边框的按钮
        OutlineButton(
          child: Text('Outline Button'),
          onPressed: () => print('Outline Button'),
        ),
        //4.FloatingActionButton 通常放在Scaffold下与body同级
        //FloatingActionButton(onPressed: null),

        //5.自定义button: 图标-文字-背景-圆角
        FlatButton(
          color: Colors.amberAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            //包裹内容  MainAxisSize.max最大
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              Text('喜欢作者'),
            ],
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
