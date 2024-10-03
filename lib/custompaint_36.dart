import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: custompaint36(),
    );
  }
}

class custompaint36 extends StatefulWidget {
  const custompaint36({super.key});

  @override
  _custompaint36State createState() => _custompaint36State();
}

class _custompaint36State extends State<custompaint36> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: CustomPaint(
          painter: demopainter(),
          child: Text(
            'This is packman',
            style: TextStyle(
                color: Colors.black,
                backgroundColor: Colors.lightGreenAccent,
                fontSize: 25),
          ),
        ),
      ),
    );
  }
}

class demopainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var center = size / 2;
    var paint = Paint()..color = Colors.yellow;
    canvas.drawArc(
        Rect.fromCenter(
            center: Offset(center.width, center.height),
            width: 250,
            height: 250),
        0.4,
        3.14 * 2 - 1,
        true,
        paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
