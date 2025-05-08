import 'package:flutter/material.dart';
import 'package:tighubad/layout/wrapper.dart';
import 'package:tighubad/screens/home/home_screen.dart';
import 'package:tighubad/screens/test_screen/test_screen.dart';

class CongratulationScreen extends StatefulWidget {
  const CongratulationScreen({super.key});

  @override
  State<CongratulationScreen> createState() => _CongratulationScreenState();
}

class _CongratulationScreenState extends State<CongratulationScreen> {
  @override
  Widget build(BuildContext context) {
    return Wrapper(
      child: Center(
        child: Container(
          margin: EdgeInsets.only(top: 40, left: 24, right: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage("assets/images/THLogo-blue 1.png")),
              Image(
                image: AssetImage("assets/images/undraw_winners_re_wr1l 1.png"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 21),
                child: Text(
                  "Congratulations!",
                  style: TextStyle(
                    color: Color(0xff434D65),
                    fontFamily: "Inter",
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Total Time Consumed ",
                        style: TextStyle(
                          color: Color(0xff434D65),
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                        children: [
                          TextSpan(
                            text: "00:45 min",
                            style: TextStyle(
                              color: Color(0xff1D93F3),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "You have successfully completed the test before the allotted time! ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff434D65),
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 60),
                    RichText(
                      text: TextSpan(
                        text: "Test Difficulty:",
                        style: TextStyle(
                          color: Color(0xff434D65),
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                        children: [
                          TextSpan(
                            text: "Novice",
                            style: TextStyle(
                              color: Color(0xff1D93F3),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: "Total Score: ",
                        style: TextStyle(
                          color: Color(0xff434D65),
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                        children: [
                          TextSpan(
                            text: "8",
                            style: TextStyle(color: Color(0xff00C21F)),
                          ),
                          TextSpan(text: " / 10"),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TestScreen()),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        height: 52,
                        margin: EdgeInsets.only(top: 34),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff1D93F3),
                        ),
                        child: Text(
                          "Start Test Again",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        height: 52,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff1D93F3)),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Text(
                          "Home",
                          style: TextStyle(
                            color: Color(0xff1D93F3),
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
