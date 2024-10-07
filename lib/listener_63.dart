import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Linsterner63(),
    );
  }
}

class Linsterner63 extends StatefulWidget {
  const Linsterner63({Key? key}) : super(key: key);

  @override
  _Linsterner63State createState() => _Linsterner63State();
}

class _Linsterner63State extends State<Linsterner63> {
  int numberofpress = 0;
  int numberofrelease = 0;
  double x = 0.0;
  double y = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('listener example'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Listener(
        onPointerDown: (PointerDownEvent event) {
          setState(() {
            numberofpress++;
          });
        },
        onPointerUp: (PointerEvent details) {
          setState(() {
            numberofrelease++;
          });
        },
        onPointerMove: (PointerEvent details) {
          setState(() {
            x = details.position.dx;
            y = details.position.dy;
          });
        },
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.blueAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('pressed:$numberofpress'),
              Text('released:$numberofrelease'),
              Text(
                  'positionofcusser:${x.toStringAsFixed(2)} ${y.toStringAsFixed(2)}')
            ],
          ),
        ),
      ),
    );
  }
}
