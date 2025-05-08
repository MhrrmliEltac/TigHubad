import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String? subTitle;
  final bool isShow;
  final bool isColumn;

  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  const AppbarWidget({
    this.isShow = false,
    required this.title,
    this.subTitle,
    this.isColumn = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(56.0), // Set the preferred size
      child: AppBar(
        backgroundColor: Color(0xff1D93F3),
        automaticallyImplyLeading: false,
        leading:
            isShow
                ? IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.chevron_left_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
                )
                : null,
        title:
            isColumn
                ? Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Inter",
                      ),
                    ),
                    Text(
                      subTitle ?? "",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ],
                )
                : Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Inter",
                  ),
                ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            color: Colors.white,
            iconSize: 30,
          ),
        ],
      ),
    );
  }
}
