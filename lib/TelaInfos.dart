import 'package:flutter/material.dart';

class TelaInfos extends StatefulWidget {
  @override
  _TelaInfosState createState() => _TelaInfosState();
}

class _TelaInfosState extends State<TelaInfos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela de Infos"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              "Olá você está na Tela de Infos",
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
