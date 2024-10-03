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
      home: dragableandscrollable44(),
    );
  }
}

class dragableandscrollable44 extends StatefulWidget {
  const dragableandscrollable44({super.key});

  @override
  _dragableandscrollable44State createState() =>
      _dragableandscrollable44State();
}

class _dragableandscrollable44State extends State<dragableandscrollable44> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: DraggableScrollableSheet(
        builder: (BuildContext context, ScrollController ScrollControlar) {
      return Container(
        color: Colors.blueAccent,
        child: ListView.builder(
            itemCount: 20,
            controller: ScrollControlar,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text('item $index'),
              );
            }),
      );
    }));
  }
}
