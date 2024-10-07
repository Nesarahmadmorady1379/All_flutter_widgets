import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Hero60(),
    );
  }
}

class Hero60 extends StatefulWidget {
  const Hero60({Key? key}) : super(key: key);

  @override
  _Hero60State createState() => _Hero60State();
}

class _Hero60State extends State<Hero60> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero example'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Hero(
        
          tag: 'tag-1',
          child: GestureDetector(
            child: Container(
              height: 100,
              width: 100,
              color: Colors.blueAccent,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => secondpage()));
            },
          )),
    );
  }
}

class secondpage extends StatefulWidget {
  const secondpage({Key? key}) : super(key: key);

  @override
  _secondpageState createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hero example'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Hero(
            tag: 'tage-1',
            child: GestureDetector(
              child: Container(
                height: 100,
                width: 100,
                color: Colors.yellowAccent,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            )),
      ),
    );
  }
}
