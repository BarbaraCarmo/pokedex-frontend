import 'package:flutter/material.dart';

import 'TelaLogin.dart';

class TelaCadastro extends StatefulWidget {
  @override
  _TelaCadastroState createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  TextEditingController _nameEditingController = TextEditingController();
  TextEditingController _emailEditingController = TextEditingController();
  TextEditingController _passwordEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela de Cadastro"),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            Text(
              "Você está na Tela de Cadastro",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: "Nome"),
              style: TextStyle(fontSize: 24),
              controller: _nameEditingController,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: "E-mail"),
              style: TextStyle(fontSize: 24),
              controller: _emailEditingController,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(labelText: "Senha"),
              obscureText: true,
              style: TextStyle(
                fontSize: 24,
              ),
              controller: _passwordEditingController,
            ),
            ElevatedButton(
                child: Text("Cadastrar"),
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelaLogin()),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
