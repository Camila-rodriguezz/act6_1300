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
            child: const Text('Ver AboutDialog Widget'),
          )),
          SizedBox(
            height: 30,
          ),
          Center(
              child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/pantalla3');
            },
            child: const Text('Ver AboutListTile Widget'),
          )),
          SizedBox(
            height: 30,
          ),
          Center(
              child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/pantalla4');
            },
            child: const Text('Ver AbsorbPointer Widget'),
          )),
          SizedBox(
            height: 30,
          ),
          Center(
              child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/pantalla5');
            },
            child: const Text('Ver AlertDialog Widget'),
          )),
          SizedBox(
            height: 30,
          ),
          Center(
              child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/pantalla6');
            },
            child: const Text('Ver Align Widget'),
          )),
          SizedBox(
            height: 30,
          ),
          Center(
              child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/pantalla7');
            },
            child: const Text('Ver AnimatedAlign'),
          )),
          SizedBox(
            height: 30,
          ),
          Center(
              child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/pantalla8');
            },
            child: const Text('Ver AnimatedBuilder'),
          )),
          SizedBox(
            height: 30,
          ),
          Center(
              child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/pantalla9');
            },
            child: const Text('Ver AnimatedContainer'),
          )),
          SizedBox(
            height: 10,
          ),
          Center(
              child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/pantalla10');
            },
            child: const Text('Ver AnimatedCrossFade'),
          )),
          SizedBox(
            height: 0,
          ),
          Center(
              child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/pantalla11');
            },
            child: const Text('Ver AnimatedDefaultTextStyle'),
          )),
        ],
      ),
    );
  }
}
