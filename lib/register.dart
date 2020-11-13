import 'package:flutter/material.dart';
import 'package:nat/normal_dialog.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String name, user, password;

  Container buildTextFieldname() => Container(
        margin: EdgeInsets.only(top: 20),
        width: 250,
        child: TextField(
          onChanged: (value) => name = value.trim(),
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.radio),
            labelText: 'name',
            border: OutlineInputBorder(),
          ),
        ),
      );

  Container buildTextFielduser() => Container(
        margin: EdgeInsets.only(top: 20),
        width: 250,
        child: TextField(
          onChanged: (value) => user = value.trim(),
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.radio),
            labelText: 'user',
            border: OutlineInputBorder(),
          ),
        ),
      );

  Container buildTextFieldpassword() => Container(
        margin: EdgeInsets.only(top: 20),
        width: 250,
        child: TextField(
          onChanged: (value) => password = value.trim(),
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock),
            labelText: 'password',
            border: OutlineInputBorder(),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('name = $name , user = $user ,pasword = $password');
          if (name == null ||
              name.isEmpty ||
              user == null ||
              user.isEmpty ||
              password == null ||
              password.isEmpty) {
            normalDialog(context, 'กรอกข้อความด้วย');
          } else {}
        },
        child: Icon(Icons.cloud_upload),
      ),
      appBar: AppBar(
        title: Text('สมัครสมาชิก'),
      ),
      body: Center(
        child: Column(
          children: [
            buildTextFieldname(),
            buildTextFielduser(),
            buildTextFieldpassword(),
          ],
        ),
      ),
    );
  }
}
