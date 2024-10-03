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
      home: colorfilterd34(),
    );
  }
}

class colorfilterd34 extends StatefulWidget {
  const colorfilterd34({super.key});

  @override
  _colorfilterd34State createState() => _colorfilterd34State();
}

class _colorfilterd34State extends State<colorfilterd34> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ColorFiltered(
          colorFilter: const ColorFilter.mode(Colors.white, BlendMode.color),
          child: Image.asset('image/nsh1.jpg'),
        ),
      ),
    );
  }
}

mixin blendMode {}
