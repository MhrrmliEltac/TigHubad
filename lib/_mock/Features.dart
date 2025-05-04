// ignore: file_names
import 'package:flutter/material.dart';

class Feature {
  final String name;
  final String? imageUrl;
  final IconData icon;
  final bool isActive;

  Feature({
    required this.name,
    this.imageUrl,
    required this.icon,
    required this.isActive,
  });
}
