import 'package:flutter/material.dart';

class ImageDemo02 extends StatelessWidget {
  const ImageDemo02({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/lia.jpg');
    /* return Image(
      //1.在Flutter项目中创建一个文件夹,存储图片
      //2.在pubspec.yaml进行配置
      //3.使用图片
      image: AssetImage('assets/images/lia.jpg'),
    ); */
  }
}

/*
 * 加载网络图片
 */
class ImageDemo01 extends StatelessWidget {
  const ImageDemo01({
    Key key,
    @required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    //Image.network(imageUrl);
    return Image(
      //color: Colors.green,//混入到图片中
      //colorBlendMode: BlendMode.overlay,//混入模式
      image: NetworkImage(imageUrl),
      width: 200,
      height: 200,
      fit: BoxFit.contain,
      repeat: ImageRepeat.repeatY,
      //alignment: Alignment.bottomCenter,//常量设置方式
      alignment: Alignment(0, 0), //精准数值设置
    );
  }
}
