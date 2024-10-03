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
      home: Clipoval28(),
    );
  }
}

class Clipoval28 extends StatefulWidget {
  const Clipoval28({super.key});

  @override
  _Clipoval28State createState() => _Clipoval28State();
}

class _Clipoval28State extends State<Clipoval28> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ClipOval(
          clipper: castomclip(),
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blueAccent,
          ),
        ),
      ),
    );
  }
}

class castomclip extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, size.width, size.height - 20);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
