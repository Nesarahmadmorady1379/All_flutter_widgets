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
      home: datepicker40(),
    );
  }
}

class datepicker40 extends StatefulWidget {
  const datepicker40({super.key});

  @override
  _datepicker40State createState() => _datepicker40State();
}

class _datepicker40State extends State<datepicker40> {
  DateTime selecteddate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                '${selecteddate.year}-${selecteddate.month}-${selecteddate.day}'),
            ElevatedButton(
                onPressed: () async {
                  DateTime? datetime = await showDatePicker(
                      context: context,
                      initialDate: selecteddate,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(3000));
                  if (datetime != null) {
                    setState(() {
                      selecteddate = datetime;
                    });
                  }
                },
                child: const Text('chose date'))
          ],
        ),
      ),
    );
  }
}
