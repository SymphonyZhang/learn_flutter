import 'package:flutter/material.dart';

class TextFieldDemo extends StatelessWidget {
  final usernameTextEditController = TextEditingController();
  final passwordTextEditController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Theme(
            data: ThemeData(
              primaryColor: Colors.red,
            ),
            child: TextField(
              controller: usernameTextEditController,
              decoration: InputDecoration(
                labelText: 'username',
                icon: Icon(Icons.people),
                hintText: '请输入用户名',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.red[100],
              ),
              onChanged: (value) {
                print('onChange: $value');
              },
              onSubmitted: (value) {
                print('submit: $value');
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: passwordTextEditController,
            decoration: InputDecoration(
              labelText: 'password',
              icon: Icon(Icons.lock),
              //border: OutlineInputBorder(),
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.red[100],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 40,
            child: FlatButton(
              onPressed: () {
                //1.获取用户名和密码
                final username = usernameTextEditController.text;
                final password = passwordTextEditController.text;

                print('username : $username       password : $password');

                usernameTextEditController.text = '';
                passwordTextEditController.text = '';
              },
              color: Colors.blue,
              child: Text(
                '登 录',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
