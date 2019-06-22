import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        child: Column(
          children: [emailField(), passwordField(), submitButton()],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email address',
        hintText: 'Ej. you@example.com',
      ),
    );
  }

  Widget passwordField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Escribe tu password...',
      ),
    );
  }

  Widget submitButton() {
    return RaisedButton(
      color: Color(0xFF42A5F5),
      onPressed: () {},
      child: const Text(
        'Login',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
