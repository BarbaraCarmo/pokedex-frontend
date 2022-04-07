import 'package:flutter/material.dart';

class ListPokemon extends StatefulWidget {
  @override
  _ListPokemon createState() => _ListPokemon();
}

class _ListPokemon extends State<ListPokemon> {
// "Don't already Have an account? "
  Color color = Colors.black;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, indice) {
            return ListTile(
              title: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                        topLeft: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0)),
                    color: Color.fromARGB(255, 238, 218, 44)),
                width: 200,
                height: 30,
                // color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(['Nome Pokemon '][indice]),
                    Image.network(
                        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png')
                  ],
                ),
              ),
            );
          }),
    );
  }
}
