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
      home: choicechip26(),
    );
  }
}

class choicechip26 extends StatefulWidget {
  const choicechip26({super.key});

  @override
  _choicechip26State createState() => _choicechip26State();
}

class _choicechip26State extends State<choicechip26> {
  bool _ischeacked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ChoiceChip(
          label: const Text('chocechip'),
          selected: _ischeacked,
          selectedColor: Colors.orangeAccent,
          onSelected: (newbool) {
            setState(() {
              _ischeacked = newbool;
            });
          },
        ),
      ),
    );
  }
}
