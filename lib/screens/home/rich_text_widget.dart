import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'noun',
        style: TextStyle(
          color: Colors.white,
          fontFamily: "Inter",
          fontSize: 16,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.italic,
        ),
        children: [
          TextSpan(
            text: '| tig · hu · bad',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.normal,
            ),
          ),
        ],
      ),
    );
  }
}
