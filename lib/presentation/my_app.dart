// import 'package:daelim_2025/presentation/example/example_screen.dart';
import 'package:daelim_2025/app/router/app_router.dart';
//import 'package:daelim_2025/presentation/start/start_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      themeMode: ThemeMode.light,
      routerConfig: router,
    );
  }
}
