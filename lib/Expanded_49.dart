import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Expnded49(),
    );
  }
}

class Expnded49 extends StatefulWidget {
  const Expnded49({Key? key}) : super(key: key);

  @override
  _Expnded49State createState() => _Expnded49State();
}

class _Expnded49State extends State<Expnded49> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                color: Colors.yellow,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
