import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Aboutdiolog7(),
    );
  }
}

class Aboutdiolog7 extends StatefulWidget {
  const Aboutdiolog7({super.key});

  @override
  _Aboutdiolog7State createState() => _Aboutdiolog7State();
}

class _Aboutdiolog7State extends State<Aboutdiolog7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => const AboutDialog(
                        applicationIcon: Icon(Icons.star),
                        applicationLegalese: 'legales',
                        applicationName: 'widget app',
                        applicationVersion: 'version 1.0.0',
                        children: [
                          Text('this is teaxt created by flutter map')
                        ],
                      ));
            },
            child: const Text('show about dialog')),
      ),
    );
  }
}
