import 'package:flutter/material.dart';

class Startscreen extends StatelessWidget {
  const Startscreen({super.key});

  //타이틀
  Widget _buildTitle() {
    return Text(
      'BMI Calculator',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 30,
        fontStyle: FontStyle.italic,
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6C63FF),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          //Colors.blueAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildTitle(),
              Image.asset('assets/images/bike.png'),
              Text('Text'),
              Text("data"),
              ElevatedButton(onPressed: () {}, child: Text("Get Started")),
            ],
          ),
        ),
      ),
    );
  }
}
