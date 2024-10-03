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
      home: Navigation18(),
    );
  }
}

class Navigation18 extends StatefulWidget {
  const Navigation18({super.key});

  @override
  _Navigation18State createState() => _Navigation18State();
}

class _Navigation18State extends State<Navigation18> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const navigationexample(),
                  ));
            },
            child: const Text('push')),
      ),
    );
  }
}

class navigationexample extends StatefulWidget {
  const navigationexample({super.key});

  @override
  _navigationexampleState createState() => _navigationexampleState();
}

class _navigationexampleState extends State<navigationexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('this is second page'),
      ),
    );
  }
}
