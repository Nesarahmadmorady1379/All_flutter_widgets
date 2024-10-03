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
      home: constranedbox35(),
    );
  }
}

class constranedbox35 extends StatefulWidget {
  const constranedbox35({super.key});

  @override
  _constranedbox35State createState() => _constranedbox35State();
}

class _constranedbox35State extends State<constranedbox35> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 350,
            maxWidth: 34009,
          ),
          child: Container(
            color: Colors.blueAccent,
            height: 350,
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}
