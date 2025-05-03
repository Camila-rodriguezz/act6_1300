import 'package:flutter/material.dart';

class PantallaOnce extends StatefulWidget {
  const PantallaOnce({Key? key}) : super(key: key);

  @override
  State<PantallaOnce> createState() => _PantallaOnceState();
}

class _PantallaOnceState extends State<PantallaOnce> {
  bool _first = true;
  double _fontSize = 60;
  Color _color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'AnimatedDefaultTextStyle',
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 25.0,
          ),
        ),
        backgroundColor: Color(0xffffb0b0),
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
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 120,
                child: AnimatedDefaultTextStyle(
                  duration: Duration(milliseconds: 300),
                  style: TextStyle(
                    fontSize: _fontSize,
                    color: _color,
                    fontWeight: FontWeight.bold,
                  ),
                  child: Text('Flutter'),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    _fontSize = _first ? 90 : 60;
                    _color = _first ? Colors.blue : Colors.red;
                    _first = !_first;
                  });
                },
                child: Text('Cambiar'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
