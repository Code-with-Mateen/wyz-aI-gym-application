import 'package:flutter/material.dart';
import 'package:wyz/Authentication/Splash.dart';
import 'package:wyz/Home%20flow/usernev.dart';


void main() {
  runApp(const MyApp());
    WidgetsFlutterBinding.ensureInitialized(); //important

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wyz AI Fitness and Mental App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Splash(),
    );
  }
}

