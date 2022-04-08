import 'package:flutter/material.dart';

import '../widgets/custom_drawer.dart';

class TelaInfosPokemon extends StatefulWidget {
  @override
  _TelaInfosPokemonState createState() => _TelaInfosPokemonState();
}

class _TelaInfosPokemonState extends State<TelaInfosPokemon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela de infos pokemon"),
      ),
      drawer: CustomDrawer(),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              "Olá você está na Tela de infos pokemon",
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
