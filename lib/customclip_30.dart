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
      home: aboutpage(),
    );
  }
}

class aboutpage extends StatefulWidget {
  const aboutpage({super.key});

  @override
  _aboutpageState createState() => _aboutpageState();
}

class _aboutpageState extends State<aboutpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              ClipPath(
                clipper: mycustomclippath(),
                child: Container(
                  height: 220,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.purple, Colors.red],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomRight)),
                ),
              ),
              const Positioned(
                top: 50,
                bottom: 120,
                left: 110,
                right: 100,
                child: Text(
                  'Anna Avetisyan',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              const Positioned(
                left: 0,
                top: 0,
                child: BackButton(
                  color: Colors.white,
                ),
              ),
              const Positioned(
                  top: 140,
                  bottom: 0,
                  left: 100,
                  right: 100,
                  child: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 216, 210, 210),
                    child: Icon(
                      size: 50,
                      Icons.person,
                      color: Color.fromARGB(255, 128, 17, 148),
                    ),
                  ))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Card(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(Icons.person),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Anna Avetisyan',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          const Card(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(Icons.date_range),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Birthday',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          const Card(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(Icons.phone_android_outlined),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    '879387592',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          const Card(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(Icons.camera_enhance_sharp),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Instagram acount',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          const Card(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(Icons.mail_outline),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    'afjaldf@gmail.com',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          const Card(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(Icons.remove_red_eye_outlined),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Password',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  Icon(Icons.restore_outlined)
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Colors.purple, Colors.red],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomRight),
                borderRadius: BorderRadius.circular(20)),
            child: const ElevatedButton(
              onPressed: null,
              child: Text(
                'Edith profile',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class mycustomclippath extends CustomClipper<Path> {
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

  @override
  Path getClip(Size size) {
    return Path()
      ..lineTo(0, size.height - 80)
      ..quadraticBezierTo(
          size.width / 2, size.height, size.width + 10, size.height - 80)
      ..lineTo(size.width, 0);
  }
}
