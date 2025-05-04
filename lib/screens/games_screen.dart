import 'package:flutter/material.dart';
import 'package:tighubad/layout/wrapper.dart';
import 'package:tighubad/widgets/appbar_widget.dart';

class GamesScreen extends StatefulWidget {
  const GamesScreen({super.key});

  @override
  State<GamesScreen> createState() => _GamesScreenState();
}

class _GamesScreenState extends State<GamesScreen> {
  @override
  Widget build(BuildContext context) {
    return Wrapper(
      appBar: AppbarWidget(title: "Games", isShow: true),
      child: Column(children: []),
    );
  }
}
