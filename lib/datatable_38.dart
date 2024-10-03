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
      home: datatable38(),
    );
  }
}

class datatable38 extends StatefulWidget {
  const datatable38({super.key});

  @override
  _datatable38State createState() => _datatable38State();
}

class _datatable38State extends State<datatable38> {
  @override
  Widget build(BuildContext context) {
    TextStyle title =
        const TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold);
    return Scaffold(
      body: Center(
        child: DataTable(columns: <DataColumn>[
          DataColumn(
              label: Text(
            'Name',
            style: title,
          )),
          DataColumn(
              label: Text(
            'Age',
            style: title,
          )),
          DataColumn(
              label: Text(
            'Color',
            style: title,
          )),
        ], rows: const <DataRow>[
          DataRow(cells: <DataCell>[
            DataCell(Text('Max')),
            DataCell(Text('20')),
            DataCell(Text('red')),
          ]),
          DataRow(cells: <DataCell>[
            DataCell(Text('Ali')),
            DataCell(Text('21')),
            DataCell(Text('Black')),
          ]),
          DataRow(cells: <DataCell>[
            DataCell(Text('sia')),
            DataCell(Text('25')),
            DataCell(Text('Black')),
          ]),
          DataRow(cells: <DataCell>[
            DataCell(Text('gool')),
            DataCell(Text('67')),
            DataCell(Text('green'))
          ])
        ]),
      ),
    );
  }
}
