import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Aboutlistile8(),
    );
  }
}

class Aboutlistile8 extends StatefulWidget {
  const Aboutlistile8({super.key});

  @override
  _State createState() => _State();
}

class _State extends State<Aboutlistile8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: AboutListTile(
          icon: Icon(Icons.info),
          applicationIcon: FlutterLogo(),
          applicationLegalese: 'legales',
          applicationName: 'flutter widget',
          aboutBoxChildren: [
            Text('this is a good coding'),
          ],
        ),
      ),
    );
  }
}
