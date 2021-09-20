import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: MusicPage(),
      ),
    ),
  );
}

class MusicPage extends StatefulWidget {
  const MusicPage({Key? key}) : super(key: key);

  @override
  _MusicPageState createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.black,
            Colors.black38,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(70.0),
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 40.0),
              Text('Çalmaya doyamadıklarım'),
              SizedBox(height: 45.0),
              Image.asset(
                'images/safiyesoyman.png',
              ),
              SizedBox(height: 15.0),
              Text('djfvıjvıervj')
            ],
          ),
        ),
      ),
    );
  }
}
