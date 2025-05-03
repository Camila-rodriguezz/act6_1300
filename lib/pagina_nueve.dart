import 'package:flutter/material.dart';

class PantallaNueve extends StatefulWidget {
  const PantallaNueve({Key? key}) : super(key: key);

  @override
  State<PantallaNueve> createState() => _PantallaNueveState();
}

class _PantallaNueveState extends State<PantallaNueve> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'AnimatedContainer',
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 25.0,
          ),
        ),
        backgroundColor: Color(0xffa4ff65),
        centerTitle: true,
      ),
      body: Column(
        children: [
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
          GestureDetector(
            onTap: () {
              setState(() {
                selected = !selected;
              });
            },
            child: Center(
              child: AnimatedContainer(
                width: selected ? 200.0 : 100.0,
                height: selected ? 100.0 : 200.0,
                color: selected ? Colors.blueGrey : Colors.grey,
                alignment: selected
                    ? Alignment.center
                    : AlignmentDirectional.topCenter,
                duration: Duration(seconds: 2),
                curve: Curves.fastOutSlowIn,
                child: FlutterLogo(
                  size: 75,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
