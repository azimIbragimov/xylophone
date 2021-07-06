import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget musicButton(String name, Color color) {
    return FlatButton(
      height: MediaQuery.of(context).size.height / 8,
      color: color,
      onPressed: () {
        setState(() {
          final audioPlayer = AudioCache();
          audioPlayer.play(name);
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              musicButton("note7.wav", Colors.purple),
              musicButton("note6.wav", Colors.blue),
              musicButton("note5.wav", Colors.lime),
              musicButton("note4.wav", Colors.green),
              musicButton("note3.wav", Colors.yellow),
              musicButton("note2.wav", Colors.orange),
              musicButton("note1.wav", Colors.red),
              musicButton("butter.mp3", Colors.green[300])
            ]),
      ),
    );
  }
}
