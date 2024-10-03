import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Appbar12(),
    );
  }
}

class Appbar12 extends StatefulWidget {
  const Appbar12({super.key});

  @override
  _State createState() => _State();
}

class _State extends State<Appbar12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("appbar widget"),
        backgroundColor: Colors.orangeAccent,
        actions: const [Icon(Icons.alarm)],
        leading: const Icon(Icons.menu),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
        ),
      ),
      body: const Center(),
    );
  }
}
