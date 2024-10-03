import 'dart:ui';

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
      home: bankdripfilter20(),
    );
  }
}

class bankdripfilter20 extends StatefulWidget {
  const bankdripfilter20({super.key});

  @override
  _bankdripfilter20State createState() => _bankdripfilter20State();
}

class _bankdripfilter20State extends State<bankdripfilter20> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Stack(
          children: [
            Text(
              '0' * 10000,
              style: const TextStyle(color: Colors.blue),
            ),
            Center(
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 4.0,
                    sigmaY: 4.0,
                  ),
                  child: Container(
                    width: 250,
                    height: 250,
                    alignment: Alignment.center,
                    child: const Text('blur'),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
