import 'package:flutter/material.dart';
import 'package:pokedex/widgets/custom_drawer.dart';

import '../../screens/TelaInfosPokemon.dart';

class TelaListagem extends StatefulWidget {
  String valor;
  TelaListagem({required this.valor});
  @override
  _TelaListagemState createState() => _TelaListagemState();
}

class _TelaListagemState extends State<TelaListagem> {
  @override
  TextEditingController nameController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela de Listagem"),
        backgroundColor: Colors.red,
      ),
      drawer: CustomDrawer(),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 20, 20),
              child: Text(
                "Olá " + widget.valor + " você está na Tela de Listagem",
                style: TextStyle(fontSize: 24),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Text(
                  'Pesquise aqui pelo nome ou id do Pokemon que está procurando:'),
            ),
            Padding(
              // padding: const EdgeInsets.only(bottom: 5.0),
              padding: EdgeInsets.fromLTRB(10, 10, 20, 20),

              child: TextField(
                  // Tell your textfield which controller it owns
                  controller: nameController,
                  // Every single time the text changes in a
                  // TextField, this onChanged callback is called
                  // and it passes in the value.
                  //
                  // Set the text of your controller to
                  // to the next value.
                  // onChanged: (v) => nameController.text = v,
                  decoration: InputDecoration(
                    labelText: 'Pesquise aqui',
                  )),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 20, 20),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TelaInfosPokemon(),
                        ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                            topLeft: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0)),
                        color: Color.fromARGB(255, 238, 218, 44)),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.15,
                    // color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Nome Pokemon'),
                        Image.network(
                            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png')
                      ],
                    ),
                  )),
            ),

            // ElevatedButton(
            //     child: Text("Ir para tela de infos pokemon"),
            //     style: ElevatedButton.styleFrom(primary: Colors.red),
            //     onPressed: () {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder: (context) => TelaInfosPokemon(),
            //           ));
            //     }),
          ],
        ),
      ),
    );
  }
}
