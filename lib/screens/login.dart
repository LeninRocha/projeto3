import 'package:flutter/material.dart';
export 'login.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.play_circle_outlined, size: 80, color: Colors.greenAccent[400]),
          Text(
            'MUSIC',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.grey[900],
            ),
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                label: Text('INSIRA SEU E-MAIL: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[900],
                    ))),
          ),
          TextField(
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                label: Text('INSIRA SUA SENHA: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[900],
                    ))),
            obscureText: true,
          ),
          Padding(
            padding: EdgeInsets.only(top: 27),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.greenAccent[400], // Background color
              ),
              child: Text('ENTRAR'),
              onPressed: () => Navigator.pushReplacementNamed(context, '/lista'),
            ),
          ),
        ],
      ),
    );
  }
}
