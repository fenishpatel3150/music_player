import 'package:flutter/material.dart';
import 'package:music_player/screen/provider/play_provider.dart';
import 'package:music_player/screen/view/home_screen/Home_Screen.dart';
import 'package:music_player/screen/view/music_screen/music_screen.dart';
import 'package:music_player/theme/theme_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => Play_provider(),),
    ],child: const MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themedata(),
      routes: {
        '/' : (context) => Home_Screen(),
        '/second' : (context) => music_screen(),
      },


    );
  }

}

