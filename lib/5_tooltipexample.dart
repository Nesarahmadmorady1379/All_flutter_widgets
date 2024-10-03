import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Tooltipexample());
}

class Tooltipexample extends StatefulWidget {
  const Tooltipexample({super.key});

  @override
  _TooltipState createState() => _TooltipState();
}

class _TooltipState extends State<Tooltipexample> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Title'),
        ),
        body: const Center(
          child: Tooltip(
            message: 'this is a flutter logo',
            child: FlutterLogo(
              size: 100,
            ),
          ),
        ),
      ),
    );
  }
}
