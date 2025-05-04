import 'package:flutter/material.dart';
import 'package:tighubad/_mock/Features.dart';
import 'package:tighubad/screens/dictionary_screen.dart';
import 'package:tighubad/screens/games_screen.dart';
import 'package:tighubad/screens/speak_screen.dart';
import 'package:tighubad/screens/test_screen.dart';

class FeatureGrid extends StatelessWidget {
  final List<Feature> features;

  const FeatureGrid({required this.features, super.key});

  void _navigateToFeatureName(BuildContext context, String name) {
    switch (name) {
      case "Dictionary":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DictionaryScreen()),
        );
        break;
      case "Start Test":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const TestScreen()),
        );
        break;
      case "Games":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const GamesScreen()),
        );
        break;
      case "Speaker":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SpeakScreen()),
        );
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      childAspectRatio: 1,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      padding: const EdgeInsets.all(16),
      children:
          features.map((feature) {
            return GestureDetector(
              onTap: () {
                _navigateToFeatureName(context, feature.name);
              },
              child: Container(
                margin: EdgeInsets.all(10),
                width: 181,
                height: 181,
                decoration: BoxDecoration(
                  color: feature.isActive ? Colors.blue : Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Image.asset(feature.imageUrl ?? ""),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            feature.icon,
                            color:
                                feature.isActive
                                    ? Colors.white
                                    : Color(0xff434D65),
                            size: 40,
                          ),
                          SizedBox(height: 20),
                          Text(
                            feature.name,
                            style: TextStyle(
                              color:
                                  feature.isActive
                                      ? Colors.white
                                      : Color(0xff434D65),
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              fontFamily: "Inter",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
    );
  }
}
