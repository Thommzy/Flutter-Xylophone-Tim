import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int SoundNumber}) {
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed: () {
            playSound(SoundNumber);
          },
          child: null),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, SoundNumber: 1),
              buildKey(color: Colors.green, SoundNumber: 2),
              buildKey(color: Colors.purple, SoundNumber: 3),
              buildKey(color: Colors.orange, SoundNumber: 4),
              buildKey(color: Colors.cyanAccent, SoundNumber: 5),
              buildKey(color: Colors.teal, SoundNumber: 6),
              buildKey(color: Colors.yellowAccent, SoundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
