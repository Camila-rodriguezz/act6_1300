import 'package:flutter/material.dart';

class PantallaCuatro extends StatefulWidget {
  const PantallaCuatro({Key? key}) : super(key: key);

  @override
  State<PantallaCuatro> createState() => _PantallaCuatroState();
}

class _PantallaCuatroState extends State<PantallaCuatro> {
  double turns = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla Cuatro',
          style: const TextStyle(
            color: Color(0xff000000),
            fontSize: 25.0,
          ),
        ),
        backgroundColor: Color(0xffabfcff),
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
                Navigator.pop(context);
              },
              child: const Text('¡Regresar!'),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(50),
                  child: AnimatedRotation(
                    turns: turns,
                    duration: const Duration(seconds: 1),
                    child: const FlutterLogo(
                      size: 100,
                    ),
                  ),
                ),
                ElevatedButton(
                  child: const Text('Rotar Logo'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent,
                  ),
                  onPressed: () {
                    setState(() => turns += 1 / 4);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
