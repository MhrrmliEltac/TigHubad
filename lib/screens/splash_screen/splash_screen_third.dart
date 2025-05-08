import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tighubad/screens/welcome_screen.dart';

class SplashScreenThird extends StatefulWidget {
  const SplashScreenThird({super.key});

  @override
  State<SplashScreenThird> createState() => _SplashScreenThirdState();
}

class _SplashScreenThirdState extends State<SplashScreenThird> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    _startAnimation();
    _startTimer();
  }

  void _startAnimation() {
    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  void _startTimer() {
    Duration duration = const Duration(seconds: 3);
    Timer(duration, _goHome);
  }

  void _goHome() {
    Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        pageBuilder:
            (context, animation, secondaryAnimation) => const WelcomeScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
        transitionDuration: const Duration(milliseconds: 800),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            const Image(
              image: AssetImage("assets/images/unsplash_0apZjDdRS5o.png"),
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(255, 255, 255, 1.0),
                    Color.fromRGBO(255, 255, 255, 0.9),
                    Color.fromRGBO(255, 255, 255, 1.0),
                  ],
                  stops: [0.0, 0.5, 1.0],
                ),
              ),
            ),
            Center(
              child: AnimatedOpacity(
                opacity: _opacity,
                duration: const Duration(seconds: 1),
                curve: Curves.easeInOut,
                child: Transform.scale(
                  scale: 1.3,
                  child: Image.asset(
                    "assets/images/Logo.png",
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
