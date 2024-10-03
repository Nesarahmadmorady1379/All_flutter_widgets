import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Flow53(),
    );
  }
}

class Flow53 extends StatefulWidget {
  const Flow53({Key? key}) : super(key: key);

  @override
  _Flow53State createState() => _Flow53State();
}

class _Flow53State extends State<Flow53> with TickerProviderStateMixin {
  late AnimationController menuAnimation;
  IconData lastIconclicked = Icons.notifications;
  final List<IconData> menuItems = <IconData>[
    Icons.home,
    Icons.new_releases,
    Icons.notifications,
    Icons.settings,
    Icons.menu
  ];
  @override
  void initState() {
    super.initState();
    menuAnimation =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Flow(
          delegate: flowMenuDelegate(menuAnimation: menuAnimation),
        ));
  }
}

class flowMenuDelegate extends FlowDelegate {
  flowMenuDelegate({required this.menuAnimation})
      : super(repaint: menuAnimation);
  final Animation<double> menuAnimation;
  @override
  bool shouldRepaint(flowMenuDelegate oldDelegate) {
    return menuAnimation != oldDelegate.menuAnimation;
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    double dx = 0.0;
    for (int i = 0; i < context.childCount; i++) {
      dx = context.getChildSize(i)!.width * i;
      context.paintChild(i,transform: Matrix4.translationValues(dx))
    }
  }
}
