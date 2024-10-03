import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Filterchip51(),
    );
  }
}

class Filterchip51 extends StatefulWidget {
  const Filterchip51({Key? key}) : super(key: key);

  @override
  _Filterchip51State createState() => _Filterchip51State();
}

class _Filterchip51State extends State<Filterchip51> {
  bool isselected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FilterChip(
          label: Text('Filter chip'),
          selected: isselected,
          onSelected: (bool value) {
            setState(() {
              isselected = !isselected;
            });
          },
          avatar: Text('F'),
        ),
      ),
    );
  }
}
