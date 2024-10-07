import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: leanireprograssindecator62(),
    );
  }
}

class leanireprograssindecator62 extends StatefulWidget {
  const leanireprograssindecator62({Key? key}) : super(key: key);

  @override
  _leanireprograssindecator62State createState() =>
      _leanireprograssindecator62State();
}

class _leanireprograssindecator62State extends State<leanireprograssindecator62>
    with TickerProviderStateMixin {
  late AnimationController controller;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('lenare prograss indecator example'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LinearProgressIndicator(
              value: controller.value,
            ),
            SizedBox(
              height: 10,
            ),
            LinearProgressIndicator(),
            SizedBox(
              height: 10,
            ),
            CircularProgressIndicator(
              value: controller.value,
            ),
            SizedBox(
              height: 10,
            ),
            CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
