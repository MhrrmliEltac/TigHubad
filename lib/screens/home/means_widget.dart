import 'package:flutter/material.dart';

class MeansWidget extends StatelessWidget {
  const MeansWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 222,
      margin: EdgeInsets.only(left: 24, right: 24),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Text(
            "What It Means",
            style: TextStyle(
              color: Color(0xff434D65),
              fontFamily: "Inter",
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 5),
          RichText(
            text: TextSpan(
              text: "transcriber, translator",
              style: TextStyle(
                color: Color(0xff1D93F3),
                fontFamily: "Inter",
                fontWeight: FontWeight.bold,
                fontSize: 18,
                height: 1.8,
              ),
              children: [
                TextSpan(
                  style: TextStyle(
                    color: Color(0xff434D65),
                    fontFamily: 'Inter',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  text:
                      "~ a person who translates written messages from one language to another. ~ an electronic language translator",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
