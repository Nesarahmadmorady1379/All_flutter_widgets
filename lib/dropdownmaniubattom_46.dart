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
      home: dropdownmenubottom46(),
    );
  }
}

class dropdownmenubottom46 extends StatefulWidget {
  const dropdownmenubottom46({super.key});

  @override
  _dropdownmenubottom46State createState() => _dropdownmenubottom46State();
}

class _dropdownmenubottom46State extends State<dropdownmenubottom46> {
  String dropdownvalue = 'one';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: DropdownButton<String>(
            value: dropdownvalue,
            icon: const Icon(
              Icons.menu,
            ),
            items: const [
              DropdownMenuItem<String>(
                value: 'one',
                child: Text('gooly'),
              ),
              DropdownMenuItem<String>(
                value: 'tow',
                child: Text('gooly'),
              ),
              DropdownMenuItem<String>(
                value: 'three',
                child: Text('gooly'),
              ),
            ],
            onChanged: (String? newvalue) {
              setState(() {
                dropdownvalue = newvalue!;
              });
            }),
      ),
    );
  }
}
