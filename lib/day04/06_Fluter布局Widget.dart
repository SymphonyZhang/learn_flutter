import 'package:flutter/material.dart';

//Row / Column: 继承自Flex
//FLex 直接使用的较少
/**
     * Flex( direction: Axis.horizontal, ) == ROW
     * Flex( direction: Axis.vertical, ) == Column
     */

class ColumnDemo extends StatelessWidget {
  const ColumnDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      /**
         * Column 特点：
         *  - 垂直方向尽可能占据比较大的空间
         *    *垂直方向也是希望包裹内容，那么设置 mainAxisSize = min
         *  - 水平方向包裹内容
         * MainAxisAlignment
         *  - start:主轴的开始位置挨个摆放元素(默认值)
         *  - end:主轴的结束位置挨个摆放元素
         *  - center:主轴的中心点对齐
         *  - spaceBetween:左右两边的间距为0，其他元素之间平分间距
         *  - spaceAround:左右两边的间距是其他元素之间的间距的一半
         *  - spaceEvenly:所有的间距平分空间
         *
         * CrossAxisAlignment
         *  - start:交叉轴的起始位置对齐
         *  - end:交叉轴的结束位置对齐
         *  - center:中心点对齐(默认值)
         *  - baseline:基线对齐(必须有文本的时候才起效果)
         *  - stretch:先让Row在交叉轴方向上占据尽可能大的空间，然后将我们所有的子widget交叉轴的方向上，拉伸到最大
         */
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.ideographic,
      verticalDirection: VerticalDirection.down,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          width: 80,
          height: 60,
          color: Colors.red,
          child: Text(
            'Hello',
            style: TextStyle(fontSize: 20),
          ),
        ),
        Container(
          width: 120,
          height: 100,
          color: Colors.green,
          child: Text(
            'World',
            style: TextStyle(fontSize: 30),
          ),
        ),
        Container(
          width: 90,
          height: 80,
          color: Colors.blue,
          child: Text(
            'google',
            style: TextStyle(fontSize: 12),
          ),
        ),
        Container(
          width: 50,
          height: 120,
          color: Colors.orange,
          child: Text(
            'abc',
            style: TextStyle(fontSize: 40),
          ),
        ),
      ],
    );
  }
}

class RowDemo extends StatelessWidget {
  const RowDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Row(
        /**
         * Row 特点：
         *  - 水平方向尽可能占据比较大的空间
         *    *水平方向也是希望包裹内容，那么设置 mainAxisSize = min
         *  - 垂直方向包裹内容
         * MainAxisAlignment
         *  - start:主轴的开始位置挨个摆放元素(默认值)
         *  - end:主轴的结束位置挨个摆放元素
         *  - center:主轴的中心点对齐
         *  - spaceBetween:左右两边的间距为0，其他元素之间平分间距
         *  - spaceAround:左右两边的间距是其他元素之间的间距的一半
         *  - spaceEvenly:所有的间距平分空间
         *
         * CrossAxisAlignment
         *  - start:交叉轴的起始位置对齐
         *  - end:交叉轴的结束位置对齐
         *  - center:中心点对齐(默认值)
         *  - baseline:基线对齐(必须有文本的时候才起效果)
         *  - stretch:先让Row在交叉轴方向上占据尽可能大的空间，然后将我们所有的子widget交叉轴的方向上，拉伸到最大
         */
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        textBaseline: TextBaseline.ideographic,
        mainAxisSize: MainAxisSize.max,
        //verticalDirection: VerticalDirection.up,
        children: <Widget>[
          Container(
            width: 80,
            height: 60,
            color: Colors.red,
            child: Text(
              'Hello',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            width: 120,
            height: 100,
            color: Colors.green,
            child: Text(
              'World',
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            width: 90,
            height: 80,
            color: Colors.blue,
            child: Text(
              'google',
              style: TextStyle(fontSize: 12),
            ),
          ),
          Container(
            width: 50,
            height: 120,
            color: Colors.orange,
            child: Text(
              'abc',
              style: TextStyle(fontSize: 40),
            ),
          ),
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
