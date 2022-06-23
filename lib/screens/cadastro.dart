import 'package:flutter/material.dart';
export 'cadastro.dart';

class Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent[400],
        title: Text('MÚSICA',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[900],
            )),
        actions: [
          TextButton(
            child: const Text(
              'ADICIONAR',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
      body: Column(children: [
        TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            border: UnderlineInputBorder(),
            label: Text('MÚSICA',
                style: TextStyle(
                  color: Colors.grey[900],
                )),
          ),
        ),
        TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: UnderlineInputBorder(),
            label: Text('BANDA',
                style: TextStyle(
                  color: Colors.grey[900],
                )),
          ),
        ),
      ]),
    );
  }
}
