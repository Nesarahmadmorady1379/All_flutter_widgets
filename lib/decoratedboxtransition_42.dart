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
      home: decoratedboxtransition42(),
    );
  }
}

class decoratedboxtransition42 extends StatefulWidget {
  const decoratedboxtransition42({super.key});

  @override
  _decoratedboxtransition42State createState() =>
      _decoratedboxtransition42State();
}

class _decoratedboxtransition42State extends State<decoratedboxtransition42>
    with TickerProviderStateMixin {
  late DecorationTween decorationtween = DecorationTween(
      begin: BoxDecoration(
          color: Colors.white,
          border: Border.all(style: BorderStyle.none),
          borderRadius: BorderRadius.circular(60.0),
          boxShadow: const <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 20.0,
                spreadRadius: 8.0,
                offset: Offset(0, 6.0))
          ]),
      end: BoxDecoration(
          color: Colors.white,
          border: Border.all(style: BorderStyle.none),
          borderRadius: BorderRadius.zero));
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 2),
  )..repeat(reverse: true);
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          child: Center(
        child: DecoratedBoxTransition(
            decoration: decorationtween.animate(_controller),
            child: Container(
              height: 250,
              width: 250,
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('image/nsh1.jpg'),
            )),
      )),
    );
  }
}
