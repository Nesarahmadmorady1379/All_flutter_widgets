import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Bannerwidget14(),
    );
  }
}

class Bannerwidget14 extends StatefulWidget {
  const Bannerwidget14({super.key});

  @override
  _State createState() => _State();
}

class _State extends State<Bannerwidget14> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Expanded(
          child: ClipRect(
            child: Banner(
              message: "20% of",
              location: BannerLocation.topEnd,
              child: Container(
                height: 300,
                width: double.infinity,
                color: Colors.blueGrey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Image(
                      image: AssetImage('image/nsh1.jpg'),
                      height: 100,
                      width: 100,
                    ),
                    Row(
                      children: [
                        const Text('buy this pecture for 30 af'),
                        const SizedBox(
                          width: 10,
                        ),
                        TextButton(
                            onPressed: () {}, child: const Text('push to by'))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
