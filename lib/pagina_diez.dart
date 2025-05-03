import 'dart:ui';

import 'package:flutter/material.dart';

class PantallaDiez extends StatefulWidget {
  const PantallaDiez({Key? key}) : super(key: key);

  @override
  State<PantallaDiez> createState() => _PantallaDiezState();
}

class _PantallaDiezState extends State<PantallaDiez> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'AnimatedCrossFade',
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 25.0,
          ),
        ),
        backgroundColor: Color(0xff99d1ff),
        centerTitle: true,
      ),
      body: Column(children: [
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('¡Regresar!'),
        ),
        SizedBox(
          height: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: 100,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _bool = !_bool;
                });
              },
              child: Text(
                'Cambiar',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            AnimatedCrossFade(
                firstChild: Image.asset(
                  'assets/images/girasol.jpg',
                  width: double.infinity,
                ),
                secondChild: Image.asset(
                  'assets/images/paisaje.jpg',
                  width: double.infinity,
                ),
                crossFadeState: _bool
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: Duration(seconds: 1))
          ],
        ),
      ]),
    );
  }
}
