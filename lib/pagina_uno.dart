import 'package:flutter/material.dart';

class PantallaUno extends StatelessWidget {
  const PantallaUno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla Uno',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
              child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/pantalla2');
            },
            child: const Text('Ver Pantalla 2'),
          )),
          SizedBox(
            height: 30,
          ),
          Center(
              child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/pantalla3');
            },
            child: const Text('Ver Pantalla 3'),
          )),
          SizedBox(
            height: 30,
          ),
          Center(
              child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/pantalla4');
            },
            child: const Text('Ver Pantalla 4'),
          )),
          SizedBox(
            height: 30,
          ),
          Center(
              child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/pantalla5');
            },
            child: const Text('Ver Pantalla 5'),
          )),
          SizedBox(
            height: 30,
          ),
          Center(
              child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/pantalla6');
            },
            child: const Text('Ver Pantalla 6'),
          )),
          SizedBox(
            height: 30,
          ),
          Center(
              child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/pantalla7');
            },
            child: const Text('Ver Pantalla 7'),
          )),
        ],
      ),
    );
  }
}
