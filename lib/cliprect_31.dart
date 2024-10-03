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
      home: cliprect31(),
    );
  }
}

class cliprect31 extends StatefulWidget {
  const cliprect31({super.key});

  @override
  _cliprect31State createState() => _cliprect31State();
}

class _cliprect31State extends State<cliprect31> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipRect(
        clipper: mycliper(),
        child: Container(
          height: 3000,
          width: 3000,
          color: Colors.blueAccent,
        ),
      ),
    );
  }
}

class mycliper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return const Rect.fromLTWH(0, 0, 100, 100);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
