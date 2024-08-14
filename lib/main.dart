import 'package:flutter/material.dart';
import 'package:octave_tunes_player_app/view/tune_view.dart';
import 'package:octave_tunes_player_app/widgets/splash_screen.dart';

void main() {
  SplashScreen();
  runApp(const Material());
}

class Material extends StatefulWidget {
  const Material({super.key});

  @override
  State<Material> createState() => _MaterialState();
}

class _MaterialState extends State<Material> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}
