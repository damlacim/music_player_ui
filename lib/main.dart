import 'package:flutter/cupertino.dart';
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
  bool playing = false;
  IconData playBtn = Icons.play_arrow;

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Slider.adaptive(
        activeColor: Colors.black,
        inactiveColor: Colors.white30,
        value: position.inSeconds.toDouble(),
        max: musicLength.inSeconds.toDouble(),
        onChanged: (value) {});
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
  }

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
              SizedBox(height: 15.0),
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
                  SizedBox(
                    width: 110.0,
                  ),
                  IconButton(
                    color: Colors.white,
                    iconSize: 20.0,
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border),
                  ),
                ],
              ),
              SizedBox(height: 35.0),
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
              ),
              SizedBox(height: 20.0),
              slider(),
              SizedBox(
                height: 1.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    color: Colors.white,
                    iconSize: 30.0,
                    onPressed: () {},
                    icon: Icon(Icons.skip_previous),
                  ),
                  IconButton(
                    color: Colors.white,
                    iconSize: 45.0,
                    onPressed: () {
                      if (!playing) {
                        setState(() {
                          playBtn = Icons.pause;
                          playing = true;
                        });
                      } else {
                        setState(() {
                          playBtn = Icons.play_arrow;
                          playing = false;
                        });
                      }
                    },
                    icon: Icon(playBtn),
                  ),
                  IconButton(
                    color: Colors.white,
                    iconSize: 30.0,
                    onPressed: () {},
                    icon: Icon(Icons.skip_next),
                  ),
                ],
              ),
              SizedBox(
                height: 14.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    color: Colors.white38,
                    iconSize: 25.0,
                    onPressed: () {},
                    icon: Icon(Icons.repeat),
                  ),
                  SizedBox(
                    width: 160.0,
                  ),
                  IconButton(
                    color: Colors.white38,
                    iconSize: 25.0,
                    onPressed: () {},
                    icon: Icon(Icons.shuffle),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
