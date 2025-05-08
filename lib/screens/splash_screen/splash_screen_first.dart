import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tighubad/screens/splash_screen/splash_screen_second.dart';
import 'dart:async';

class SplashScreenFirst extends StatefulWidget {
  const SplashScreenFirst({super.key});

  @override
  State<SplashScreenFirst> createState() => _SplashScreenFirstState();
}

class _SplashScreenFirstState extends State<SplashScreenFirst> {
  _startTimer() {
    Duration duration = const Duration(seconds: 3);
    return Timer(duration, _goHome);
  }

  void _goHome() {
    Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        pageBuilder:
            (context, animation, secondaryAnimation) =>
                const SplashScreenSecond(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
        transitionDuration: const Duration(milliseconds: 800),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Lottie.asset(
          'assets/Animation - 1746653407687.json',
          width: 300,
          height: 300,
          repeat: true,
        ),
      ),
    );
  }
}
