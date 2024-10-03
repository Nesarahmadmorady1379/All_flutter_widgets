import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Baseline15(),
    );
  }
}

class Baseline15 extends StatefulWidget {
  const Baseline15({super.key});

  @override
  _Baseline15State createState() => _Baseline15State();
}

class _Baseline15State extends State<Baseline15> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
            width: 300,
            height: 300,
            color: Colors.yellow,
            child: const Baseline(
              baseline: 50,
              baselineType: TextBaseline.alphabetic,
              child: FlutterLogo(
                size: 50,
              ),
            )),
      ),
    );
  }
}
