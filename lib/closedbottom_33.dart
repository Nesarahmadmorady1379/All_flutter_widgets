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
      home: closedbottom33(),
    );
  }
}

class closedbottom33 extends StatefulWidget {
  const closedbottom33({super.key});

  @override
  _closedbottom33State createState() => _closedbottom33State();
}

class _closedbottom33State extends State<closedbottom33> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: CloseButton(
          color: Colors.red,
        ),
      ),
    );
  }
}
