import 'package:flutter/material.dart';

import '../widgets/custom_drawer.dart';

class TelaInfosApp extends StatefulWidget {
  @override
  _TelaInfosAppState createState() => _TelaInfosAppState();
}

class _TelaInfosAppState extends State<TelaInfosApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela de infos app"),
        backgroundColor: Colors.red,
      ),
      drawer: CustomDrawer(focus: 'TelaInfosApp'),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              "Olá você está na Tela de infos app",
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
