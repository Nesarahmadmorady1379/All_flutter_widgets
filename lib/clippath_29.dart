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
      home: clippath29(),
    );
  }
}

class clippath29 extends StatefulWidget {
  const clippath29({super.key});

  @override
  _clippath29State createState() => _clippath29State();
}

class _clippath29State extends State<clippath29> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ClipPath(
          clipper: mycliper(),
          child: Container(
            height: 300,
            width: double.infinity,
            color: Colors.blueAccent,
          ),
        ));
  }
}

class mycliper extends CustomClipper<Path> {
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

  @override
  Path getClip(Size size) {
    return Path()
      ..lineTo(0, size.height)
      ..quadraticBezierTo(
          size.width / 4, size.height - 40, size.width / 2, size.height - 20)
      ..quadraticBezierTo(
          size.height * 3 / 4, size.height, size.width, size.height - 30)
      ..lineTo(size.width, 0);
  }
}
