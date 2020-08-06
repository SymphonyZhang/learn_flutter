import 'package:flutter/material.dart';

class FormDemo extends StatefulWidget {
  @override
  _FormDemoState createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  final registerFormKey = GlobalKey<FormState>();
  String username, password;

  void registerForm() {
    registerFormKey.currentState.save();
    registerFormKey.currentState.validate(); //开启表单输入的各个校验
    print('usrename : $username     password : $password');
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.people),
              labelText: 'username',
            ),
            onSaved: (newValue) {
              this.username = newValue;
            },
            validator: (value) {
              if (value.isEmpty) {
                return 'username not be null';
              }
              return null;
            },
          ),
          TextFormField(
            obscureText: true, //密码模式
            decoration: InputDecoration(
              icon: Icon(Icons.lock),
              labelText: 'password',
            ),
            onSaved: (newValue) {
              this.password = newValue;
            },
            validator: (value) {
              if (value.isEmpty) {
                return 'password not be null';
              }
              return null;
            },
            //autovalidate: true, //开启当前校验
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            width: double.infinity,
            height: 40,
            child: RaisedButton(
              color: Colors.lightGreen,
              child: Text(
                'Register',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onPressed: registerForm,
            ),
          ),
        ],
      ),
    );
  }
}
