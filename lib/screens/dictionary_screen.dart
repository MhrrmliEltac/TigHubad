import 'package:flutter/material.dart';
import 'package:tighubad/widgets/appbar_widget.dart';

class DictionaryScreen extends StatefulWidget {
  const DictionaryScreen({super.key});

  @override
  State<DictionaryScreen> createState() => _DictionaryScreenState();
}

class _DictionaryScreenState extends State<DictionaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: "Dictionary", isShow: true),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50),
        width: double.infinity,
        decoration: BoxDecoration(color: Color(0xff1D93F3)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("assets/images/THLogowhite.png"),
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child: Stack(
                children: [
                  TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: "Search a word",
                      hintStyle: TextStyle(
                        color: Color(0xff434D65),
                        fontSize: 16,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 12,
                    left: 70,
                    child: Icon(
                      Icons.search,
                      size: 25,
                      color: Color(0xff1D93F3),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              "or Tap to Record",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: "Inter",
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: 140,
              height: 140,
              padding: EdgeInsets.all(50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: Colors.white,
              ),
              child: Icon(Icons.mic_none, color: Color(0xff1D93F3), size: 40),
            ),
          ],
        ),
      ),
    );
  }
}
