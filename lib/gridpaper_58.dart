import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Gridpaper58(),
    );
  }
}

class Gridpaper58 extends StatefulWidget {
  const Gridpaper58({Key? key}) : super(key: key);

  @override
  _Gridpaper58State createState() => _Gridpaper58State();
}

class _Gridpaper58State extends State<Gridpaper58> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gridpaper example'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: GridPaper(
          color: Colors.blueAccent,
          divisions: 1,
          interval: 210,
          subdivisions: 6,
        ),
      ),
    );
  }
}
