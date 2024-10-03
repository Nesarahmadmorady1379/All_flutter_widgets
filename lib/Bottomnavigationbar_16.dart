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
      home: bottomnavigationbar16(),
    );
  }
}

class bottomnavigationbar16 extends StatefulWidget {
  const bottomnavigationbar16({super.key});

  @override
  _bottomnavigationbar16State createState() => _bottomnavigationbar16State();
}

class _bottomnavigationbar16State extends State<bottomnavigationbar16> {
  int _index = 0;
  List<Widget> body = [
    const Icon(Icons.menu),
    const Icon(Icons.home),
    const Icon(Icons.settings)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          onTap: (int newindex) {
            setState(() {
              _index = newindex;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'manu'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'setting'),
          ]),
      appBar: AppBar(),
      body: Center(
        child: body[_index],
      ),
    );
  }
}
