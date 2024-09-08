import 'package:flutter/material.dart';
import 'package:tune_app/models/tune_model.dart';
import 'package:tune_app/widgets/tune_item.dart';

class TunesView extends StatelessWidget {
  const TunesView({super.key});

  final List<TuneModel> tunes = const [
    TuneModel(color: Colors.red, sound: 'note1.wav'),
    TuneModel(color: Colors.blue, sound: 'note2.wav'),
    TuneModel(color: Colors.green, sound: 'note3.wav'),
    TuneModel(color: Colors.yellow, sound: 'note4.wav'),
    TuneModel(color: Colors.orange, sound: 'note5.wav'),
    TuneModel(color: Colors.purple, sound: 'note6.wav'),
    TuneModel(color: Colors.pink, sound: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tune App',
            style: TextStyle(color: Colors.white, fontSize: 30)),
        backgroundColor: Colors.grey[900],
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          ...tunes.map((e) => TuneItem(tune: e)).toList(),
        ],
      ),
    );
  }
}
