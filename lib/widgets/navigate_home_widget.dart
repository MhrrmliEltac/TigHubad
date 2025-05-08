import 'package:flutter/material.dart';
import 'package:tighubad/screens/home/home_screen.dart';

class NavigateHomeWidget extends StatefulWidget {
  const NavigateHomeWidget({super.key});

  @override
  State<NavigateHomeWidget> createState() => _NavigateHomeWidgetState();
}

class _NavigateHomeWidgetState extends State<NavigateHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 21,
      right: 19,
      child: Container(
        width: 62,
        height: 62,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xff1D93F3),
          borderRadius: BorderRadius.circular(50),
        ),
        child: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
          icon: Icon(Icons.home_outlined, color: Colors.white, size: 30),
        ),
      ),
    );
  }
}
