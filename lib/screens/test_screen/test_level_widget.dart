import 'package:flutter/material.dart';
import 'package:tighubad/_mock/TestData.dart';
import 'package:tighubad/screens/test_screen/start_test_screen.dart';

class TestLevelWidget extends StatelessWidget {
  const TestLevelWidget({super.key, required this.test});

  final List<Testdata> test;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: ListView.builder(
        itemCount: test.length,
        itemBuilder:
            (context, index) => Container(
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      test[index].testLevel,
                      style: TextStyle(
                        color: Color(0xff434D65),
                        fontSize: 18,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w600,
                        height: 1.6,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Duration ${test[index].testTime} min",
                          style: TextStyle(
                            color: Color(0xff1D93F3),
                            fontSize: 14,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w500,
                            height: 1.6,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StartTestScreen(),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.play_arrow_outlined,
                            color: Color(0xff434D65),
                            weight: 2,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
      ),
    );
  }
}
