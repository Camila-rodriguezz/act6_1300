import 'package:flutter/material.dart';

class PantallaCinco extends StatefulWidget {
  const PantallaCinco({Key? key}) : super(key: key);

  @override
  State<PantallaCinco> createState() => _PantallaCincoState();
}

class _PantallaCincoState extends State<PantallaCinco> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'AlertDialog',
            style: const TextStyle(
              color: Color(0xff000000),
              fontSize: 25.0,
            ),
          ),
          backgroundColor: Color(0xffabe0ff),
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
                child: Text('Mostrar Alert Dialog'),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Cerrar'),
                        ),
                      ],
                      title: Text('Flutter Map'),
                      contentPadding: EdgeInsets.all(20.0),
                      content: Text('Esto es un Alert Dialog'),
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
