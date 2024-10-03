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
      home: Bottomsheet17(),
    );
  }
}

class Bottomsheet17 extends StatefulWidget {
  const Bottomsheet17({super.key});

  @override
  _Bottomsheet17State createState() => _Bottomsheet17State();
}

class _Bottomsheet17State extends State<Bottomsheet17> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 400,
                      child: Center(
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('close')),
                      ),
                    );
                  });
            },
            child: const Text('press to see bottomsheet')),
      ),
    );
  }
}
