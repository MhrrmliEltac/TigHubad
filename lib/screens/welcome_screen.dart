import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tighubad/layout/wrapper.dart';
import 'package:tighubad/screens/home/home_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  void _navigateRoute(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Wrapper(
          child: Stack(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage("assets/images/THLogo-blue 1.png"),
                      ),
                      SizedBox(height: 28),
                      Center(
                        child: Text(
                          "Welcome to\nTig-Húbad",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff1D93F3),
                            fontFamily: "Inter",
                            fontWeight: FontWeight.bold,
                            fontSize: 48,
                          ),
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "Bisaya - English Dictionary",
                        style: TextStyle(
                          color: Color(0xff434D65),
                          fontSize: 18,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 45,
                right: 35,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(width: 3, color: Color(0xff434D65)),
                  ),
                  child: IconButton(
                    style: ButtonStyle(),
                    onPressed: () {
                      _navigateRoute(context);
                    },
                    icon: Icon(
                      FontAwesomeIcons.arrowRightLong,
                      size: 28,
                      color: Color(0xff434D65),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
