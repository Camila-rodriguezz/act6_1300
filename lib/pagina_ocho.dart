import 'package:flutter/material.dart';
import 'dart:math' as math;

class PantallaOcho extends StatefulWidget {
  const PantallaOcho({Key? key}) : super(key: key);

  @override
  State<PantallaOcho> createState() => _PantallaOchoState();
}

class _PantallaOchoState extends State<PantallaOcho>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'AnimatedBuilder',
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 25.0,
          ),
        ),
        backgroundColor: Color(0xffffb199),
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
          Center(
            child: AnimatedBuilder(
              animation: _controller,
              child: FlutterLogo(
                size: 100,
              ),
              builder: (BuildContext context, Widget? child) {
                return Transform.rotate(
                  angle: _controller.value * 2.0 * math.pi,
                  child: child,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
