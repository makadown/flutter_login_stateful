import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();


  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            emailField(),
            passwordField(),
            Container(margin: EdgeInsets.only(bottom: 25.0)),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email address',
        hintText: 'Ej. you@example.com',
      ),
      validator: (value) {
        // return null if valid
        if ( !value.contains('@')) {
          return 'Por favor captura un email valido.';
        }
        // otherwise string with error mmessage if invalid
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Escribe tu password...',
      ),
      validator: (value){
        if (value.length < 4) {
          return 'Password debe tener al menos 4 caracteres';
        }
      },
    );
  }

  Widget submitButton() {
    return RaisedButton(
      color: Colors.blue,      
      child: Text('Submit'),
      onPressed: () {
          print(formKey.currentState.validate());
      },
    );
  }
}
