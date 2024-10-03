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
      home: ClipRRect32(),
    );
  }
}

class ClipRRect32 extends StatefulWidget {
  const ClipRRect32({super.key});

  @override
  _ClipRRect32State createState() => _ClipRRect32State();
}

class _ClipRRect32State extends State<ClipRRect32> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset(
            'image/nsh1.jpg',
            width: 350,
          ),
        ),
      ),
    );
  }
}
