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
      home: chip24(),
    );
  }
}

class chip24 extends StatefulWidget {
  const chip24({super.key});

  @override
  _chip24State createState() => _chip24State();
}

class _chip24State extends State<chip24> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Chip(
          label: const Text('this is flutter chip example'),
          onDeleted: () {
            debugPrint('do something');
          },
        ),
      ),
    );
  }
}
