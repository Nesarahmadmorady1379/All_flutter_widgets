import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Aspectratio13(),
    );
  }
}

class Aspectratio13 extends StatefulWidget {
  const Aspectratio13({super.key});

  @override
  _State createState() => _State();
}

class _State extends State<Aspectratio13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          height: 300,
          width: double.infinity,
          color: Colors.orangeAccent,
          alignment: Alignment.center,
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Colors.blueGrey,
            ),
          ),
        ),
      ),
    );
  }
}
