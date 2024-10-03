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
      home: checkbox23(),
    );
  }
}

class checkbox23 extends StatefulWidget {
  const checkbox23({super.key});

  @override
  _checkbox23State createState() => _checkbox23State();
}

class _checkbox23State extends State<checkbox23> {
  bool? _ischeacked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Checkbox(
              tristate: true,
              value: _ischeacked,
              activeColor: Colors.orangeAccent,
              onChanged: (newBool) {
                setState(() {
                  _ischeacked = newBool;
                });
              })),
    );
  }
}
