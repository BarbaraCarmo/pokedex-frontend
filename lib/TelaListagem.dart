import 'package:flutter/material.dart';

import 'TelaInfos.dart';

class TelaListagem extends StatefulWidget {
  String valor;
  TelaListagem({required this.valor});
  @override
  _TelaListagemState createState() => _TelaListagemState();
}

class _TelaListagemState extends State<TelaListagem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela de Listagem"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              "Olá " + widget.valor + " você está na Tela de Listagem",
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
                child: Text("Ir para tela de infos"),
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TelaInfos(),
                      ));
                }),
          ],
        ),
      ),
    );
  }
}
