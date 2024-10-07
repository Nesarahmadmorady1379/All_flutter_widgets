import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: refreshinicator(),
    );
  }
}

class refreshinicator extends StatefulWidget {
  const refreshinicator({Key? key}) : super(key: key);

  @override
  _refreshinicatorState createState() => _refreshinicatorState();
}

class _refreshinicatorState extends State<refreshinicator> {
  List<String> items = ['item 1', 'item 2'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('refreshindicator example'),
        backgroundColor: Colors.blueAccent,
      ),
      body: RefreshIndicator(
          child: ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          leading: Text(items[index]),
        );
      }), onRefresh: () async {
        await Future.delayed(Duration(seconds: 1));
        int nextItem = items.length++;
        items.add('item $nextItem');
        setState(() {});
      }),
    );
  }
}
