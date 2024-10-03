import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GestureDetector57(),
    );
  }
}

class GestureDetector57 extends StatefulWidget {
  const GestureDetector57({Key? key}) : super(key: key);

  @override
  _GestureDetector57State createState() => _GestureDetector57State();
}

class _GestureDetector57State extends State<GestureDetector57> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gesture detector example'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _count++;
            });
          },
          child: Container(
            height: 200,
            width: 200,
            color: Colors.yellowAccent,
            child: Text('number $_count'),
          ),
        ),
      ),
    );
  }
}
