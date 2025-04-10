import 'package:daelim_2025/app/router/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Startscreen extends StatelessWidget {
  const Startscreen({super.key});

  //숏컷 커맨드 + .
  //Colors.blueAccent,

  final _title = 'Get Started with Tracking Your Health!';
  final _desc =
      'Calculate your BMI and stay on top of your wellness journey, effortlessly.';
  TextStyle get _titleStyle =>
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25);

  TextStyle get _descStyle => TextStyle(color: Color(0xFFC6C3F9), fontSize: 15);
  // TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25);

  //앱 이름
  Widget _buildappname() {
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

  //타이틀
  //Widget _buildTitle() {
  //  return Text(_title, style: _titleStyle);
  //}

  //설명
  //Widget _buildDescription() {
  //  return Text(_desc, style: _descStyle);
  //}

  //타이틀과 설명을 묶음
  Widget buildTitleDesc() {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: _title, style: _titleStyle),
          TextSpan(text: '\n'),
          // WidgetSpan(child: SizedBox(height: 15)),
          TextSpan(text: _desc, style: _descStyle),
        ],
      ),
    );
  }

  //시작버튼
  Widget _buildbutton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => context.go(AppRoute.main.toPath),
        style: ElevatedButton.styleFrom(foregroundColor: Color(0xFF081854)),
        child: Text("Get Started"),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6C63FF),
      body: SafeArea(
        child: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30), //padding 여백
            width: 280,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildappname(),
                SizedBox(height: 60),
                Image.asset('assets/images/bike.png'),
                SizedBox(height: 95),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildTitleDesc(),
                    //_buildTitle(),
                    //SizedBox(height: 15),
                    //_buildDescription(),
                  ],
                ),
                SizedBox(height: 40),
                _buildbutton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
