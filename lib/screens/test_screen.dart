import 'package:flutter/material.dart';
import 'package:tighubad/_mock/TestData.dart';
import 'package:tighubad/layout/wrapper.dart';
import 'package:tighubad/widgets/appbar_widget.dart';
import 'package:tighubad/widgets/instructions_widget.dart';
import 'package:tighubad/widgets/test_level_widget.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  List<Testdata> test = [
    Testdata(1, "Novice", "01:00"),
    Testdata(2, "Intermediate", "01:00"),
    Testdata(3, "Expert", "01:00"),
  ];

  @override
  Widget build(BuildContext context) {
    return Wrapper(
      appBar: AppbarWidget(title: "Start Test", isShow: true),
      child: Container(
        margin: EdgeInsets.all(24),
        width: double.infinity,
        child: Column(
          children: [
            TestLevelWidget(test: test),
            Flexible(
              flex: 1,
              child: Container(
                height: 1,
                width: 382,
                margin: const EdgeInsets.symmetric(vertical: 20),
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(color: Color(0xffD5DEEB)),
              ),
            ),
            InstructionsWidget(),
          ],
        ),
      ),
    );
  }
}
