import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Listview64(),
    );
  }
}

class Listview64 extends StatefulWidget {
  const Listview64({Key? key}) : super(key: key);

  @override
  _Listview64State createState() => _Listview64State();
}

class _Listview64State extends State<Listview64> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview example'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: ListWheelScrollView(
          itemExtent: 100,
          children: List.generate(100, (index) {
            return ListTile(
              leading: Icon(Icons.person),
              title: Text('good job'),
              trailing: Icon(Icons.search),
            );
          }),
        ),
      ),
    );
  }
}
