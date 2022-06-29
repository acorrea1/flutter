//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:embarque/page/linha.page.dart'; //https://macoratti.net/19/07/flut_navig1.htm
import 'package:firebase_core/firebase_core.dart';
//import 'package:embarque/icons/playstore.png';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LitAuthInit(
      authProviders: AuthProviders(emailAndPassword: true, google: true),
      child: MaterialApp(
        home: LitAuthState(
          authenticated: HomePage(),
          unauthenticated: LoginPage(),
        ),
      ),
    );
  }
}

class _LoginState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(
        child: RaisedButton.icon(
          icon: Icon(Icons.lock_outline),
          onPressed: () {
            context.signOut();
          },
          label: Text("Sair"),
        ),
      ),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}


/*
                    INICIO PROXIMA TELA 
                    https://macoratti.net/19/07/flut_navig1.htm
                    https://www.macoratti.net/19/10/flut_loginapi1.htm
                    https://www.macoratti.net/19/10/flut_loginapi2.htm
                    
                    onPressed: () => {
                      print("pressionei o botão"),
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Linha()))
                    }, //FIM PROXIMA TELA
  */
/*
  void _onCliqueEntrar(BuildContext context) {
    Navigator.push(context, Linha());
  }
  */