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
        padding: const EdgeInsets.all(65.0),
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 40.0),
              Row(
                children: [
                  Icon(
                    Icons.expand_more,
                    color: Colors.white,
                  ),
                  Center(
                    child: Text(
                      'Now Playing',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'AlegreyaSans-Light',
                        fontSize: 13.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 45.0),
              Image.asset(
                'images/safiyesoyman.png',
              ),
              SizedBox(height: 25.0),
              Text(
                'Şımart Beni Aşkım',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'AllegreyaSans-Medium',
                    fontWeight: FontWeight.w800,
                    fontSize: 20.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Safiye Soyman',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'AllegreyaSans',
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
