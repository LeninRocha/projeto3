import 'package:flutter/material.dart';
export 'lista.dart';

class Lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent[400],
        title: Text('Minhas Músicas',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[900],
            )),
        actions: [
          IconButton(icon: Icon(Icons.exit_to_app), color: Colors.greenAccent[400], onPressed: () => Navigator.pushReplacementNamed(context, '/')),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[900],
        onPressed: () => Navigator.pushNamed(context, '/cadastro'),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (ctx, index) {
          return ListTile(
            leading: Icon(Icons.play_circle_outlined, color: Colors.greenAccent[400]),
            title: Text('The Unforgiven'),
            trailing: Text('Metallica'),
          );
        },
      ),
    );
  }
}
