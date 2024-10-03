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
      home: checkboxlisttile24(),
    );
  }
}

class checkboxlisttile24 extends StatefulWidget {
  const checkboxlisttile24({super.key});

  @override
  _checkboxlisttile24State createState() => _checkboxlisttile24State();
}

class _checkboxlisttile24State extends State<checkboxlisttile24> {
  bool? _ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: CheckboxListTile(
          value: _ischecked,
          onChanged: (newbool) {
            setState(() {
              _ischecked = newbool;
            });
          },
          activeColor: Colors.orangeAccent,
          checkColor: const Color.fromARGB(255, 194, 160, 116),
          title: const Text('this is a listile checkbox'),
          subtitle: const Text('help to make it bautiful'),
          controlAffinity: ListTileControlAffinity.trailing,
          tileColor: Colors.black12,
          tristate: true,
        ),
      ),
    );
  }
}
