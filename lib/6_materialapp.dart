import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Materialapp());
}

class Materialapp extends StatefulWidget {
  const Materialapp({super.key});

  @override
  _MaterialappState createState() => _MaterialappState();
}

class _MaterialappState extends State<Materialapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      title: 'this is wigdet app',
      color: Colors.red,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          leading: const Icon(Icons.search),
          bottom: const PreferredSize(
              preferredSize: Size.fromHeight(20), child: Text('good bottom')),
          actions: const [Icon(Icons.heart_broken), Icon(Icons.call)],
          centerTitle: true,
          title: const Text('this is flutter widget app'),
        ),
        body: Center(
          child: Container(height: 200, width: 200, color: Colors.blue),
        ),
      ),
    );
  }
}
