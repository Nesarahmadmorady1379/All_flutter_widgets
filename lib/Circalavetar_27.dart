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
      home: Circleavatar27(),
    );
  }
}

class Circleavatar27 extends StatefulWidget {
  const Circleavatar27({super.key});

  @override
  _Circleavatar27State createState() => _Circleavatar27State();
}

class _Circleavatar27State extends State<Circleavatar27> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: CircleAvatar(
          backgroundColor: Colors.blueAccent,
          backgroundImage: AssetImage('image/nsh1.jpg'),
          radius: 100,
          child: Text('nesarahmad'),
        ),
      ),
    );
  }
}
