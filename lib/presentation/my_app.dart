// import 'package:daelim_2025/presentation/example/example_screen.dart';
import 'package:daelim_2025/presentation/start/startscreem.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      themeMode: ThemeMode.light,
      home: Startscreen(),
    );
  }
}
