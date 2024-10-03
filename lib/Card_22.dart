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
      home: Card22(),
    );
  }
}

class Card22 extends StatefulWidget {
  const Card22({super.key});

  @override
  _Card22State createState() => _Card22State();
}

class _Card22State extends State<Card22> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Card(
          elevation: 50,
          color: Colors.orangeAccent,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 8,
                ),
                const Text('this is an car example'),
                TextButton(onPressed: () {}, child: const Text('press')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
