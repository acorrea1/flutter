import 'package:flutter/material.dart';

class Linha extends StatefulWidget {
  @override
  _LinhaState createState() => _LinhaState();
}

class _LinhaState extends State<Linha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
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
                      labelText: "trocou",
                      labelStyle: TextStyle(color: Colors.black),
                    )), //TextField
                Divider(),
                TextField(
                    autofocus: true,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.blue, fontSize: 30),
                    decoration: InputDecoration(
                      labelText: "Senha do usuário",
                      labelStyle: TextStyle(color: Colors.black),
                    )), //TextField

                Divider(),
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
                          MaterialPageRoute(builder: (context) => Linha()))
                    }, //FIM PROXIMA TELA

                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    child: Text(
                      "Sair",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ), //Text
                    color: Colors.blue,
                  ), //RaisedButton
                ), //ButtonTheme
              ],
            ),
          ),
        ));
  }
}
