import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Alardialog10(),
    );
  }
}

class Alardialog10 extends StatefulWidget {
  const Alardialog10({super.key});

  @override
  _State createState() => _State();
}

class _State extends State<Alardialog10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('close'))
                        ],
                        title: const Text('flutter mape'),
                        contentPadding: const EdgeInsets.all(15),
                        content: const Text('this is alart dialog'),
                      ));
            },
            child: const Text('show alart')),
      ),
    );
  }
}
