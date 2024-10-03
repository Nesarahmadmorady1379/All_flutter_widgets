import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Elevateedbottom47(),
    );
  }
}

class Elevateedbottom47 extends StatefulWidget {
  const Elevateedbottom47({Key? key}) : super(key: key);

  @override
  _Elevateedbottom47State createState() => _Elevateedbottom47State();
}

class _Elevateedbottom47State extends State<Elevateedbottom47> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(children: [
          ElevatedButton(onPressed: null, child: Text('add')),
          ElevatedButton(onPressed: () {}, child: Text('add')),
          ElevatedButton.icon(onPressed: () {}, label: Icon(Icons.message))
        ]),
      ),
    );
  }
}
