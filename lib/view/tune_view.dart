import 'package:flutter/material.dart';
import 'package:octave_tunes_player_app/models/tune_model.dart';
import 'package:octave_tunes_player_app/widgets/tune_item.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final List<TuneModel> tuneColors = const [
    TuneModel(color: Color(0xffB5E48C), sound: "note1.wav"),
    TuneModel(color: Color(0xff99D98C), sound: "note2.wav"),
    TuneModel(color: Color(0xff76C893), sound: "note3.wav"),
    TuneModel(color: Color(0xff52B69A), sound: "note4.wav"),
    TuneModel(color: Color(0xff34A0A4), sound: "note5.wav"),
    TuneModel(color: Color(0xff168AAD), sound: "note6.wav"),
    TuneModel(color: Color(0xff1A759F), sound: "note7.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xff184E77),
          title: const Text(
            "Octave",
            style: TextStyle(
              color: Color(0xffD9ED92),
              fontSize: 26,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: tuneColors
              .map(
                (e) => TuneItem(tune: e),
              )
              .toList(),
        ));
  }
}
