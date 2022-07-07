import 'package:embarque/page/linha.page.dart';
import 'package:flutter/material.dart';
import 'package:embarque/page/linha.page.dart'; //https://macoratti.net/19/07/flut_navig1.htm
import 'package:embarque/page/segrota.page.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.blue, fontSize: 30),
                    decoration: InputDecoration(
                      labelText: "Matricula",
                      labelStyle: TextStyle(color: Colors.black),
                    )), //TextField

                Divider(color: Colors.transparent),
                TextField(
                    autofocus: true,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.blue, fontSize: 30),
                    decoration: InputDecoration(
                      labelText: "Senha do usuário",
                      labelStyle: TextStyle(color: Colors.black),
                    )), //TextField

                Divider(color: Colors.transparent),
                ButtonTheme(
                  height: 60.0,
                  child: RaisedButton(
                    /*
                    INICIO PROXIMA TELA 
                    https://macoratti.net/19/07/flut_navig1.htm
                    https://www.macoratti.net/19/10/flut_loginapi1.htm
                    https://www.macoratti.net/19/10/flut_loginapi2.htm
                    */

                    onPressed: () => {
                      print("pressionei o botão"),
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyApp()))
                    }, //FIM PROXIMA TELA

                    child: Text(
                      "Entrar",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ), //Text
                    color: Colors.blue,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                  ), //RaisedButton
                ), //ButtonTheme
              ],
            ),
          ),
        ));
  }
/*
  void _onCliqueEntrar(BuildContext context) {
    Navigator.push(context, Linha());
  }
  */
}
