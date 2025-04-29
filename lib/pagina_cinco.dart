import 'package:flutter/material.dart';

class PantallaCinco extends StatelessWidget {
  const PantallaCinco({Key? key}) : super(key: key);

  static const List<String> listItems = <String>[
    'apple',
    'banana',
    'melon',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla Cinco',
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 25.0,
          ),
        ),
        backgroundColor: Color(0xffabffbd),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Autocomplete<String>(
              optionsBuilder: (TextEditingValue textEditingValue) {
                if (textEditingValue.text == '') {
                  return const Iterable<String>.empty();
                }
                return listItems.where((String item) {
                  return item
                      .toLowerCase()
                      .contains(textEditingValue.text.toLowerCase());
                });
              },
              onSelected: (String item) {
                print('The $item was selected');
              },
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('¡Regresar!'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
