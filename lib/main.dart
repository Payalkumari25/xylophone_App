import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() => runApp(XylophoneApp());


class XylophoneApp extends StatelessWidget {
  // This widget is the root of your application.

  void changedSound(int noteNumber){
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey({Color color:Colors.red, int soundNumber:1}){
    return Expanded(
      child: TextButton(
        child: Text(''),
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: (){
          changedSound(soundNumber);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.yellow, soundNumber: 2),
              buildKey(color: Colors.orangeAccent, soundNumber: 3),
              buildKey(color: Colors.greenAccent, soundNumber: 4),
              buildKey(color: Colors.tealAccent, soundNumber: 5),
              buildKey(color: Colors.blue, soundNumber: 6),
              buildKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}

