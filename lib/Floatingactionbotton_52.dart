import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Floatingactionbutton52(),
    );
  }
}

class Floatingactionbutton52 extends StatefulWidget {
  const Floatingactionbutton52({Key? key}) : super(key: key);

  @override
  _Floatingactionbutton52State createState() => _Floatingactionbutton52State();
}

class _Floatingactionbutton52State extends State<Floatingactionbutton52> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blueAccent,
        child: Icon(Icons.add),
      ),
      body: Center(),
    );
  }
}
