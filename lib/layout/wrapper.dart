import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({this.appBar, required this.child, super.key});

  final Widget child;
  final PreferredSizeWidget? appBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Center(
        child: Stack(
          children: [
            Image(
              image: AssetImage("assets/images/unsplash_0apZjDdRS5o.png"),
              fit: BoxFit.cover,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(255, 255, 255, 1.0), // 0% - full opacity
                    Color.fromRGBO(255, 255, 255, 0.9), // 50% - 90% opacity
                    Color.fromRGBO(255, 255, 255, 1.0), // 100% - 100% opak
                  ],
                  stops: [0.0, 0.5, 1.0],
                ),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
