import 'package:flutter/material.dart';
import 'package:tighubad/_mock/Features.dart';
import 'package:tighubad/layout/wrapper.dart';
import 'package:tighubad/widgets/appbar_widget.dart';
import 'package:tighubad/screens/home/features_widger.dart';
import 'package:tighubad/screens/home/world_of_the_day.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Feature> features = [
    Feature(
      name: "Dictionary",
      imageUrl: "assets/images/Vector.png",
      icon: Icons.book_outlined,
      isActive: true,
    ),
    Feature(
      name: "Start Test",
      imageUrl: "assets/images/Vector-2.png",
      icon: Icons.mic_rounded,
      isActive: false,
    ),
    Feature(
      name: "Games",
      imageUrl: "assets/images/Vector -3.png",
      icon: Icons.discord_outlined,
      isActive: false,
    ),
    Feature(
      name: "Speaker",
      imageUrl: "assets/images/Vector-4.png",
      icon: Icons.volume_up,
      isActive: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Wrapper(
      appBar: AppbarWidget(title: "Tig-Húbad"),
      child: SingleChildScrollView(
        child: Column(children: [FeatureGrid(features: features), WOTD()]),
      ),
    );
  }
}
