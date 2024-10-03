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
      home: drwer45(),
    );
  }
}

class drwer45 extends StatefulWidget {
  const drwer45({super.key});

  @override
  _drwer45State createState() => _drwer45State();
}

class _drwer45State extends State<drwer45> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('myapp'),
          backgroundColor: Colors.blueAccent,
        ),
        drawer: Drawer(
            child: ListView(
          children: [
            DrawerHeader(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.blueAccent, Colors.yellowAccent],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 20,
                      child: CircleAvatar(
                        radius: 30,
                        child: Image.asset(
                          'image/nsh1.jpg',
                          height: 70,
                          width: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                )),
            const ListTile(
              title: Text('data'),
            ),
          ],
        )));
  }
}
