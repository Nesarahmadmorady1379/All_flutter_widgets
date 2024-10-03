import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Main());
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  int _selectedvalu = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            height: 200,
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('chose one option'),
                ListTile(
                  title: const Text('option 1'),
                  leading: Radio(
                      value: 1,
                      groupValue: _selectedvalu,
                      onChanged: (int? value) {
                        setState(() {
                          _selectedvalu = value!;
                        });
                      }),
                ),
                ListTile(
                  title: const Text('option 2'),
                  leading: Radio(
                      value: 2,
                      groupValue: _selectedvalu,
                      onChanged: (int? value) {
                        setState(() {
                          _selectedvalu = value!;
                        });
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
