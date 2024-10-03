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
      home: banner21(),
    );
  }
}

class banner21 extends StatefulWidget {
  const banner21({super.key});

  @override
  _banner21State createState() => _banner21State();
}

class _banner21State extends State<banner21> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: mywidget(),
    );
  }
}

mywidget() => Builder(builder: (BuildContext context) {
      return Text(
        'this is builder example',
        style: Theme.of(context).textTheme.displayLarge,
        selectionColor: Colors.black,
      );
    });
