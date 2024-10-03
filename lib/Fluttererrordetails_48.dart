import 'package:flutter/material.dart';

void main(List<String> args) {
  try {
    throw ('this is an errror');
  } catch (error) {
    FlutterError.reportError(FlutterErrorDetails(
        exception: error,
        library: 'custome messege one',
        context: ErrorSummary('custome messege tow')));
  }
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Fluttererrordetails48(),
    );
  }
}

class Fluttererrordetails48 extends StatefulWidget {
  const Fluttererrordetails48({Key? key}) : super(key: key);

  @override
  _Fluttererrordetails48State createState() => _Fluttererrordetails48State();
}

class _Fluttererrordetails48State extends State<Fluttererrordetails48> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(),
    );
  }
}
