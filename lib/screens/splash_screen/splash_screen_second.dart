import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tighubad/screens/splash_screen/splash_screen_third.dart';

class SplashScreenSecond extends StatefulWidget {
  const SplashScreenSecond({super.key});

  @override
  State<SplashScreenSecond> createState() => _SplashScreenSecondState();
}

class _SplashScreenSecondState extends State<SplashScreenSecond> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    _startAnimation();
    _startTimer();
  }

  void _startAnimation() {
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  void _startTimer() {
    const duration = Duration(seconds: 2);
    Timer(duration, _goThird);
  }

  void _goThird() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const SplashScreenThird()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AnimatedOpacity(
          opacity: _opacity,
          duration: const Duration(seconds: 2),
          curve: Curves.easeInOut,
          child: Image.asset('assets/images/Logo.png', width: 180, height: 180),
        ),
      ),
    );
  }
}
