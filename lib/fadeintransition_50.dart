import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Fadeintransition50(),
    );
  }
}

class Fadeintransition50 extends StatefulWidget {
  const Fadeintransition50({Key? key}) : super(key: key);

  @override
  _fadeinimage50State createState() => _fadeinimage50State();
}

class _fadeinimage50State extends State<Fadeintransition50>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: Duration(seconds: 1))
        ..repeat(reverse: true);
  late final Animation<double> _animation =
      CurvedAnimation(parent: _controller, curve: Curves.easeOut);
  @override
  void dispose() {
    _controller.dispose;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: FlutterLogo(
            size: 300,
          ),
        ),
      ),
    );
  }
}
