import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: form54(),
    );
  }
}

final _formKey = GlobalKey<FormState>();

class form54 extends StatefulWidget {
  const form54({Key? key}) : super(key: key);

  @override
  _form54State createState() => _form54State();
}

class _form54State extends State<form54> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('form example'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' something should be entered';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' something should be entered';
                    } else {
                      return null;
                    }
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('great')));
                      }
                    },
                    child: Text('Evaluate'))
              ],
            )));
  }
}
