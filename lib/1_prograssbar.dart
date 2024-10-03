import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Prograssbar());
}

class Prograssbar extends StatefulWidget {
  const Prograssbar({super.key});

  @override
  _PrograssbarState createState() => _PrograssbarState();
}

class _PrograssbarState extends State<Prograssbar> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
          body: Center(
              child: SizedBox(
        height: 200,
        width: 200,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CircularProgressIndicator(
            backgroundColor: Colors.grey,
            color: Colors.blue,
          ),
          SizedBox(
            height: 30,
          ),
          LinearProgressIndicator(
            backgroundColor: Colors.grey,
            color: Colors.blue,
          )
        ]),
      ))),
    );
  }
}
