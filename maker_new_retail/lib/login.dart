import 'package:flutter/material.dart';

///创客新零售登录页
///create by hjh on 2019.2.6
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("创客新零售会员登录"),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            children: <Widget>[
              SizedBox(height: 30.0),
              // [用户名]
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  labelText: "用户名",
                ),
              ),
              SizedBox(height: 10.0),
              // [密码]
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  labelText: "密码",
                ),
                obscureText: true,
              ),
              SizedBox(height: 10.0),
              // 登录按钮
              RaisedButton(
                child: Text("登录"),
                color: Colors.redAccent,
                textColor: Colors.white,
                //TODO:添加圆角，调整高度

                onPressed: () {
                  // TODO:校验用户名和密码，跳转到主页

                },
              ),
              // TODO:添加[忘记密码]按钮

            ],
          ),
      ),
    );
  }
}
