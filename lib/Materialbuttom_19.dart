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
      home: materialbottom19(),
    );
  }
}

class materialbottom19 extends StatefulWidget {
  const materialbottom19({super.key});

  @override
  _materialbottom19State createState() => _materialbottom19State();
}

class _materialbottom19State extends State<materialbottom19> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const routexample()));
          },
          color: Colors.blue,
          padding: const EdgeInsets.all(15),
          child: Text('push'),
        ),
      ),
    );
  }
}

class routexample extends StatefulWidget {
  const routexample({super.key});

  @override
  _routexampleState createState() => _routexampleState();
}

class _routexampleState extends State<routexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(),
    );
  }
}
