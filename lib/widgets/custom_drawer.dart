import 'package:flutter/material.dart';
import 'package:pokedex/screens/TelaInfosApp.dart';
import 'package:pokedex/screens/TelaLogin.dart';
import 'package:pokedex/screens/listagem/TelaListagem.dart';
import 'package:pokedex/screens/TelaPerfil.dart';

import '../screens/TelaInfosPokemon.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawer createState() => _CustomDrawer();
}

class _CustomDrawer extends State<CustomDrawer> {
// "Don't already Have an account? "
  Color color = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Text('Pokedex',
                style: TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.center),
            decoration: BoxDecoration(
              color: Colors.red,
            ),
          ),
          ListTile(
            title: Text(
              'Listagem',
              style: TextStyle(color: color),
            ),
            onTap: () {
              setState(() {
                color = Colors.red;
              });
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TelaListagem(
                      valor: 'vish',
                    ),
                  ));
            },
          ),
          ListTile(
            title: const Text('Infos Pokemon'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TelaInfosPokemon(),
                  ));
            },
          ),
          ListTile(
            title: const Text('Perfil'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TelaPerfil(),
                  ));
            },
          ),
          ListTile(
            title: const Text('Infos do App'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TelaInfosApp(),
                  ));
            },
          ),
          ListTile(
            title: const Text('Sair'),
            textColor: Colors.red,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TelaLogin(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
