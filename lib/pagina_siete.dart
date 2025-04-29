import 'package:flutter/material.dart';

class PantallaSiete extends StatefulWidget {
  const PantallaSiete({Key? key}) : super(key: key);

  @override
  State<PantallaSiete> createState() => _PantallaSieteState();
}

class _PantallaSieteState extends State<PantallaSiete> {
  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla Siete',
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 25.0,
          ),
        ),
        backgroundColor: Color(0xffcbabff),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CheckboxListTile(
            title: const Text('Checkbox List Tile'),
            value: _isChecked,
            onChanged: (bool? newValue) {
              setState(() {
                _isChecked = newValue;
              });
            },
            activeColor: Colors.orangeAccent,
            checkColor: Colors.white,
            tileColor: Colors.black12,
            subtitle: const Text('This is a subtitle'),
            controlAffinity: ListTileControlAffinity.leading,
            tristate: true,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('¡Regresar!'),
          ),
        ],
      ),
    );
  }
}
