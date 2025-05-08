import 'package:flutter/material.dart';
import 'package:tighubad/_mock/AnswerData.dart';
import 'package:tighubad/layout/wrapper.dart';
import 'package:tighubad/screens/congratulation_screen.dart';
import 'package:tighubad/widgets/appbar_widget.dart';
import 'package:tighubad/widgets/custom_checkbox.dart';

class StartTestScreen extends StatefulWidget {
  const StartTestScreen({super.key});

  @override
  State<StartTestScreen> createState() => _StartTestScreenState();
}

class _StartTestScreenState extends State<StartTestScreen> {
  List answerData = [
    Answerdata(progress: "empty", answer: "come near"),
    Answerdata(progress: "true", answer: "stub one's toe"),
    Answerdata(progress: "false", answer: "fall for"),
  ];

  @override
  Widget build(BuildContext context) {
    return Wrapper(
      appBar: AppbarWidget(
        title: "Start Test",
        subTitle: "Novice",
        isColumn: true,
        isShow: true,
      ),
      child: Center(
        child: Container(
          margin: EdgeInsets.only(top: 24, left: 24, right: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 224,
                  height: 224,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xff1D93F3),
                    borderRadius: BorderRadius.circular(200),
                  ),
                  child: Text(
                    "00:59",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.bold,
                      fontSize: 48,
                      height: 1.6,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 114,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xffEFEFEF),
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignInside,
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 0,
                        color: Color(0xff000000).withValues(alpha: 0.05),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "pandol",
                        style: TextStyle(
                          color: Color(0xff434D65),
                          fontFamily: "Inter",
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          height: 1.6,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "pandol",
                            style: TextStyle(
                              color: Color(0xff434D65),
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              height: 1.6,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.volume_up_outlined,
                              size: 25,
                              color: Color(0xff434D65),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 40, bottom: 40),
                  color: Color(0xffD5DEE8),
                  child: SizedBox(height: 2),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: List.generate(
                      answerData.length,
                      (index) => (Container(
                        height: 52,
                        margin: EdgeInsets.only(bottom: 20),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Color(0xffEFEFEF),
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignInside,
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 0,
                              color: Color(0xff000000).withValues(alpha: 0.05),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Transform.scale(
                              scale: 1.3,
                              child: CustomCheckbox(
                                progress: answerData[index].progress,
                              ),
                            ),
                            Container(
                              width: 300,
                              alignment: Alignment.center,
                              child: Text(answerData[index].answer),
                            ),
                          ],
                        ),
                      )),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap:
                      () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CongratulationScreen(),
                          ),
                        ),
                      },
                  child: Container(
                    width: double.infinity,
                    height: 52,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff1D93F3),
                    ),
                    child: Text(
                      "Next",
                      style: TextStyle(
                        color: Colors.white,
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
        ),
      ),
    );
  }
}
