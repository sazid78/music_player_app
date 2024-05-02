import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player_app/presentation/config/theme.dart';
import 'package:music_player_app/presentation/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme:darkTheme,
    );
  }
}
