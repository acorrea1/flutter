import 'dart:convert';
import 'package:flutter/material.dart';
//import 'package:dio/dio.dart'; //https://stackoverflow.com/questions/64303099/how-to-read-and-write-data-in-airtable-with-flutter
//import 'package:airtable/airtable.dart'; //https://pub.dev/packages/airtable
import 'package:http/http.dart'
    as http; //PARA OBTER DADOS WEB (REST) > https://www.youtube.com/watch?v=TKZ-wwjbqVc

class Linha extends StatefulWidget {
  @override
  _LinhaState createState() => _LinhaState();
}

class _LinhaState extends State<Linha> {
  /*
  INICIO CHAMAR API E PLANILHA
  */
  @override
  List records;

  Future<void> fetch() async {
    String url =
        'https://api.airtable.com/v0/appFG0WvNKVDZe5H0/linhas?maxRecords=3&view=Grid%20view';
    Map<String, String> header = {"Authorization": "Bearer keykXoxHVlm9lGx0M"};
    http.Response res = await http.get(url, headers: header);
    Map<String, dynamic> result = jsonDecode(res.body);

    records = result['records'];
    return;
  }
  // FIM CHAMAR API E PLANILHA

  @override
  void initstate() {
    Future.microtask(() async => await this.fetch());
    super.initState();
  }

  /*
  INICIO DA FUNÇÃO DE EXIBIR O RESULTADO
  */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: records == null
          ? Center(
              child: Text("loading ..."),
            )
          : ListView.builder(
              itemCount: this.records.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 200.0,
                  margin: EdgeInsets.all(5.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <widget>[
                      Text(this.records[index]['fields']['Rota'].toString()),
                    ],
                  ),
                );
              }),
    );
  }
}
