import 'package:flutter/material.dart';

class ClipOvalDemo extends StatelessWidget {
  const ClipOvalDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipOval(
        child: Image.network(
          'https://tva1.sinaimg.cn/large/006y8mN6gy1g7aa03bmfpj3069069mx8.jpg',
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}

class CircleAvatarDemo extends StatelessWidget {
  const CircleAvatarDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        radius: 100,
        backgroundImage: NetworkImage(
          'https://tva1.sinaimg.cn/large/006y8mN6gy1g7aa03bmfpj3069069mx8.jpg',
        ),
        child: Container(
          color: Colors.black12,
          alignment: Alignment(0, 0.5),
          width: 200,
          height: 200,
          child: Text(
            '兵长利威尔',
          ),
        ),
      ),
    );
  }
}
