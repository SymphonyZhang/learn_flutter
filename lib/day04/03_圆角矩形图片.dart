import 'package:flutter/material.dart';

class ClipRRectDemo extends StatelessWidget {
  const ClipRRectDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          'https://tva1.sinaimg.cn/large/006y8mN6gy1g7aa03bmfpj3069069mx8.jpg',
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
