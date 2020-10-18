import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());
int noteNum = 1;

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              keyButton(color: Colors.red, num: 1),
              keyButton(color: Colors.orange, num: 2),
              keyButton(color: Colors.yellow, num: 3),
              keyButton(color: Colors.green, num: 4),
              keyButton(color: Colors.teal, num: 5),
              keyButton(color: Colors.blue, num: 6),
              keyButton(color: Colors.purple, num: 7),
            ],
          ),
        ),
      ),
    );
  }
}

void playSound(noteNum) {
  final player = AudioCache();
  player.play("note$noteNum.wav");
}

int num;
Expanded keyButton({color, num}) {
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
        playSound(num);
      },
    ),
  );
}
