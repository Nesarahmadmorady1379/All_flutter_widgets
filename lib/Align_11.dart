import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Align11(),
    );
  }
}

class Align11 extends StatefulWidget {
  const Align11({super.key});

  @override
  _State createState() => _State();
}

class _State extends State<Align11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          height: 100,
          width: double.infinity,
          color: const Color.fromARGB(255, 6, 73, 8),
          child: const Align(
            alignment: Alignment.bottomCenter,
            child: FlutterLogo(
              size: 50,
            ),
          ),
        ),
      ),
    );
  }
}
