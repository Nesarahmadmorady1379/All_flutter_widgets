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
      home: dismissible43(),
    );
  }
}

class dismissible43 extends StatefulWidget {
  const dismissible43({super.key});

  @override
  _dismissible43State createState() => _dismissible43State();
}

class _dismissible43State extends State<dismissible43> {
  List<int> items = List<int>.generate(100, (int index) => index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListView.builder(
            itemCount: items.length,
            padding: const EdgeInsets.symmetric(vertical: 15),
            itemBuilder: (BuildContext context, int index) {
              return Dismissible(
                key: ValueKey<int>(items[index]),
                background: Container(
                  color: Colors.red,
                  child: Icon(Icons.delete),
                ),
                onDismissed: (DismissDirection direction) => setState(() {
                  items.removeAt(index);
                }),
                child: ListTile(
                  title: Text('item ${items[index]}'),
                ),
              );
            }),
      ),
    );
  }
}
