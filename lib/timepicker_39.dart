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
      home: datapicker39(),
    );
  }
}

class datapicker39 extends StatefulWidget {
  const datapicker39({super.key});

  @override
  _datapicker39State createState() => _datapicker39State();
}

class _datapicker39State extends State<datapicker39> {
  TimeOfDay selectedtime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${selectedtime.hour}:${selectedtime.minute}'),
            ElevatedButton(
                onPressed: () async {
                  TimeOfDay? timeofDay = await showTimePicker(
                      context: context,
                      initialTime: selectedtime,
                      initialEntryMode: TimePickerEntryMode.dial);
                  if (timeofDay != null) {
                    setState(() {
                      selectedtime = timeofDay;
                    });
                  }
                },
                child: const Text('pick time'))
          ],
        ),
      ),
    );
  }
}
