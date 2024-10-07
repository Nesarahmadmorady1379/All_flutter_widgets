import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Materialbanner65(),
    );
  }
}

class Materialbanner65 extends StatefulWidget {
  const Materialbanner65({Key? key}) : super(key: key);

  @override
  _Materialbanner65State createState() => _Materialbanner65State();
}

class _Materialbanner65State extends State<Materialbanner65> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Matrialbunner example'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: ElevatedButton(
            child: Text('open'),
            onPressed: () {
              ScaffoldMessenger.of(context).showMaterialBanner(
                MaterialBanner(
                    content: Text('subscribe'),
                    padding: EdgeInsets.all(8),
                    leading: Icon(Icons.notifications_active),
                    actions: <Widget>[
                      TextButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                                .hideCurrentMaterialBanner();
                          },
                          child: Text('dismis'))
                    ]),
              );
            }),
      ),
    );
  }
}
