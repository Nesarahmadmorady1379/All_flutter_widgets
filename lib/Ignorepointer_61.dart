import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Ignorepointer61(),
    );
  }
}

class Ignorepointer61 extends StatefulWidget {
  const Ignorepointer61({Key? key}) : super(key: key);

  @override
  _Ignorepointer61State createState() => _Ignorepointer61State();
}

class _Ignorepointer61State extends State<Ignorepointer61> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ignorpointer example'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(),
    );
  }
}
