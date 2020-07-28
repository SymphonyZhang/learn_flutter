import 'package:flutter/material.dart';

class ImageExtensionDemo extends StatelessWidget {
  const ImageExtensionDemo({
    Key key,
    @required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    //1.占位图的问题 FadeInImage 渐进渐出
    //2.图片缓存：flutter内部默认有缓存机制，最多缓存1000张 100m
    return FadeInImage(
      fadeInDuration: Duration(milliseconds: 1),
      fadeOutDuration: Duration(milliseconds: 1),
      placeholder: AssetImage('assets/images/lia.jpg'),
      image: NetworkImage(imageUrl),
    );
  }
}

class ButtonExtensionDemo extends StatelessWidget {
  const ButtonExtensionDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //1.默认情况下Button上下有一定的间距   materialTapTargetSize:MaterialTapTargetSize.shrinkWrap, //去掉间距，使button大小紧缩内容
        //2.使button变小：ButtonTheme
        //3.去除button的内间距
        ButtonTheme(
          minWidth: 30,
          height: 10,
          child: FlatButton(
            padding: EdgeInsets.all(0),
            materialTapTargetSize:
                MaterialTapTargetSize.shrinkWrap, //去掉间距，使button大小紧缩内容
            color: Colors.red,
            textColor: Colors.white,
            child: Text('Flat Button1'),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
