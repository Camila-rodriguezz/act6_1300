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
          'Pantalla Dos',
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
              child: GestureDetector(
            onTap: () {
              setState(() {
                selected = !selected;
              });
            },
            child: Center(
              child: Container(
                width: double.infinity,
                height: 250.0,
                color: Color(0xffffc6ea),
                child: AnimatedAlign(
                  alignment:
                      selected ? Alignment.topRight : Alignment.bottomLeft,
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn,
                  child: const FlutterLogo(size: 50.0),
                ),
              ),
            ),
          )),
        ],
      ),
    );
  }
}
