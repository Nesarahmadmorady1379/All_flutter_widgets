import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: popupmenubutton66(),
    );
  }
}

class popupmenubutton66 extends StatefulWidget {
  const popupmenubutton66({Key? key}) : super(key: key);

  @override
  _popupmenubutton66State createState() => _popupmenubutton66State();
}

class _popupmenubutton66State extends State<popupmenubutton66> {
  String title = 'popupmenubutton';
  String item1 = 'first item';
  String item2 = 'second item';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('popupmenubutton example'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: ListTile(
          leading: Text(title),
          trailing: PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text(item1),
                  value: item1,
                ),
                PopupMenuItem(
                  child: Text(item1),
                  value: item1,
                ),
                PopupMenuItem(
                  child: Text(item2),
                  value: item2,
                ),
              ];
            },
            onSelected: (String newvalue) {
              return setState(() {
                title = newvalue;
              });
            },
          ),
        ),
      ),
    );
  }
}
