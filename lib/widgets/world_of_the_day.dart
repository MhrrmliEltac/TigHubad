import 'package:flutter/material.dart';
import 'package:tighubad/widgets/means_widget.dart';
import 'package:tighubad/widgets/rich_text_widget.dart';

class WOTD extends StatefulWidget {
  const WOTD({super.key});

  @override
  State<WOTD> createState() => _WOTDState();
}

class _WOTDState extends State<WOTD> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 560,
        margin: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        decoration: BoxDecoration(
          color: Color(0xff1D93F3),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 31),
              child: Text(
                "Word of the Day",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Inter",
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                width: 139,
                height: 1,
                decoration: BoxDecoration(color: Colors.white),
              ),
            ),
            Text(
              "March 11, 2024",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: "Inter",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 31, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "tighubad",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Inter",
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.volume_down_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
                ],
              ),
            ),
            RichTextWidget(),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.share_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 31),
            MeansWidget(),
          ],
        ),
      ),
    );
  }
}
