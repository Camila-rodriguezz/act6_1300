import 'package:flutter/material.dart';

class PantallaDos extends StatefulWidget {
  const PantallaDos({Key? key}) : super(key: key);

  @override
  State<PantallaDos> createState() => _PantallaDosState();
}

class _PantallaDosState extends State<PantallaDos> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'AboutDialog',
          style: const TextStyle(
            color: Color(0xff000000),
            fontSize: 25.0,
          ),
        ),
        backgroundColor: Color(0xffcbabff),
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
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              child: Text('Mostrar AboutDialog'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AboutDialog(
                    applicationIcon: FlutterLogo(),
                    applicationLegalese: 'Legalese',
                    applicationName: 'Flutter App',
                    applicationVersion: 'version 1.0.0',
                    children: [
                      Text('Este es un texto creado por fluttermap'),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
