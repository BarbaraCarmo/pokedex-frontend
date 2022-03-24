import 'package:flutter/material.dart';
import 'package:pokedex/screens/TelaInfosApp.dart';
import 'package:pokedex/screens/TelaListagem.dart';
import 'package:pokedex/screens/TelaPerfil.dart';

import '../screens/TelaInfosPokemon.dart';

class CustomDrawer extends StatelessWidget {
  final String focus;

  const CustomDrawer({
    Key? key,
    required this.focus,
  }) : super(key: key);
// "Don't already Have an account? "
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: const Text('Listagem'),
            onTap: () {
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
        ],
      ),
    );
  }
}
