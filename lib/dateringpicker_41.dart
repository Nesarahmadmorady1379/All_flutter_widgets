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
      home: dateringpicker41(),
    );
  }
}

class dateringpicker41 extends StatefulWidget {
  const dateringpicker41({super.key});

  @override
  _dateringpicker41State createState() => _dateringpicker41State();
}

class _dateringpicker41State extends State<dateringpicker41> {
  DateTimeRange selecteddate =
      DateTimeRange(start: DateTime.now(), end: DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${selecteddate.duration.inDays}'),
            ElevatedButton(
                onPressed: () async {
                  DateTimeRange? datetimerange = await showDateRangePicker(
                      context: context,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(3000));
                  if (datetimerange != null) {
                    setState(() {
                      selecteddate = datetimerange;
                    });
                  }
                },
                child: const Text('chose dates'))
          ],
        ),
      ),
    );
  }
}
