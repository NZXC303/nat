import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(0, -0.65),
            radius: 1.0,
            colors: [Colors.white, Colors.blue],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              buildlogo(),
              buildText(),
              buildTextFielduser(),
              buildTextFieldpassword(),
              buildLogin(),
              TextButton(
                onPressed: () {},
                child: Text('New Register'),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container buildLogin() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: 250,
      child: ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.cloud_upload),
          label: Text('Login')),
    );
  }

  Container buildTextFielduser() => Container(
        margin: EdgeInsets.only(top: 20),
        width: 250,
        child: TextField(
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
          obscureText: true,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock),
            labelText: 'password',
            border: OutlineInputBorder(),
          ),
        ),
      );

  Text buildText() => Text(
        'NZXC303',
        style: GoogleFonts.anton(
          textStyle: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w400,
              color: Colors.purple[500],
              fontStyle: FontStyle.italic),
        ),
      );

  Container buildlogo() {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      width: 120,
      child: Image.asset('images/logo.png'),
    );
  }
}
