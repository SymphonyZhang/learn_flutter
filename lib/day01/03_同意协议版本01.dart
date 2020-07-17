//这个代码是有问题的，错误代码
class YXContentBody extends StatelessWidget {
  //错误代码
  var flag = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Checkbox(
            value: flag,
            onChanged: (value) => flag = value,
          ),
          Text(
            '同意协议',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}
