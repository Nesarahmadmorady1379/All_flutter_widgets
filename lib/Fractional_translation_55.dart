import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Flactional(),
    );
  }
}

class Flactional extends StatefulWidget {
  const Flactional({Key? key}) : super(key: key);

  @override
  _FlactionalState createState() => _FlactionalState();
}

class _FlactionalState extends State<Flactional> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flactional translation'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.blueGrey,
          ),
          FractionalTranslation(
            translation: Offset(1, -1),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ),
          FractionalTranslation(
            translation: Offset(1, -1),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
