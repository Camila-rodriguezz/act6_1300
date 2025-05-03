import 'package:flutter/material.dart';

class PantallaTres extends StatelessWidget {
  const PantallaTres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'AboutListTile',
          style: const TextStyle(
            color: Color(0xff000000),
            fontSize: 25.0,
          ),
        ),
        backgroundColor: Color(0xff8affdd),
        centerTitle: true,
      ),
      body: Column(children: [
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
            child: AboutListTile(
          icon: Icon(Icons.info),
          applicationIcon: FlutterLogo(),
          applicationLegalese: 'Legal',
          applicationName: 'Flutter App',
          applicationVersion: 'Version 1.00',
          aboutBoxChildren: [Text('Este es un texto creado por Flutter Map')],
        )),
      ]),
    );
  }
}
