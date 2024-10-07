import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GridView59(),
    );
  }
}

class GridView59 extends StatefulWidget {
  const GridView59({Key? key}) : super(key: key);

  @override
  _GridView59State createState() => _GridView59State();
}

class _GridView59State extends State<GridView59> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gridview example'),
        backgroundColor: Colors.blueAccent,
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(2),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (_, index) {
          return GridTile(
            header: GridTileBar(
              backgroundColor: Colors.black45,
              leading: Icon(
                Icons.heart_broken,
                color: Colors.red,
              ),
              trailing: Icon(Icons.share),
            ),
            child: Image.asset('image/nsh1.jpg'),
            footer: GridTileBar(
              title: Text(
                'Nesarahmad',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              subtitle: Text(
                'Morady',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
