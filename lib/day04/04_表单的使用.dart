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
