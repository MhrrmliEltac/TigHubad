import 'package:flutter/material.dart';

class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox({super.key, this.progress});
  final String? progress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.white),
          color: Colors.white,
        ),
        child:
            progress == "empty"
                ? Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color(0xff1D93F3),
                      width: 2,
                      style: BorderStyle.solid,
                    ),
                  ),
                )
                : progress == "true"
                ? Icon(Icons.check_circle, size: 20, color: Color(0xff00C21F))
                : Icon(
                  Icons.cancel_outlined,
                  size: 20,
                  color: Color(0xffFC5D5D),
                ),
      ),
    );
  }
}
