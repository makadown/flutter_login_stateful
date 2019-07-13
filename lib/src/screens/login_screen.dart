import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  String email = '';
  String password = ''; 

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
      validator: (String value) {
        // return null if valid
        if (!value.contains('@')) {
          return 'Por favor captura un email valido.';
        } else {
          return null;
        }
        // otherwise string with error mmessage if invalid
      },
      onSaved: (String value) {
        this.email = value;
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
      validator: (String value) {
        if (value.length < 4) {
          return 'Password debe tener al menos 4 caracteres';
        } else {
          return null;
        }
      },
      onSaved: (String value) {
        this.password = value;
      },
    );
  }

  Widget submitButton() {
    return RaisedButton(
      color: Colors.blue,
      child: Text('Submit'),
      onPressed: () {
         if ( formKey.currentState.validate() )  {
           /* El metodo save ejecuta todos los callbacks onSaved() de cada widget dentro del formulario */
            formKey.currentState.save();
            /* Tomar los valores y enviarlos a algun API */
            print('Hora de enviar $email y $password a mi API!');
         }
      },
    );
  }
}
