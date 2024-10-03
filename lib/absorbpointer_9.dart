import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Absorbpointer9(),
    );
  }
}

class Absorbpointer9 extends StatefulWidget {
  const Absorbpointer9({super.key});

  @override
  _State createState() => _State();
}

class _State extends State<Absorbpointer9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Stack(
          children: [
            SizedBox(
              height: 100,
              width: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: null,
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 88, 125, 155)),
              ),
            ),
            SizedBox(
              height: 50,
              width: 100,
              child: AbsorbPointer(
                child: ElevatedButton(
                  onPressed: () {},
                  child: null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
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
