import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Sliderexample());
}

class Sliderexample extends StatefulWidget {
  const Sliderexample({super.key});

  @override
  _SliderexampleState createState() => _SliderexampleState();
}

class _SliderexampleState extends State<Sliderexample> {
  double _currentvalue = 20;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Title'),
        ),
        body: Center(
          child: SizedBox(
            height: 200,
            width: 200,
            child: Slider(
                value: _currentvalue,
                min: 0,
                max: 100,
                activeColor: Colors.blue,
                divisions: 10,
                label: _currentvalue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentvalue = value;
                  });
                }),
          ),
        ),
      ),
    );
  }
}
