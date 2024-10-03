import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder56(),
    );
  }
}

class FutureBuilder56 extends StatefulWidget {
  const FutureBuilder56({Key? key}) : super(key: key);

  @override
  _FutureBuilder56State createState() => _FutureBuilder56State();
}

class _FutureBuilder56State extends State<FutureBuilder56> {
  Future<String> getdata() async {
    await Future.delayed(Duration(seconds: 1));
    return 'super';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Futurebuilder exaple'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: FutureBuilder(
            future: getdata(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              }
              if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              } else {}
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(snapshot.data.toString()),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {});
                      },
                      child: Text('refresh'))
                ],
              );
            }),
      ),
    );
  }
}
