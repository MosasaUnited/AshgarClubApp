import 'package:flutter/material.dart';

class CourtsImageAsset extends StatelessWidget {
  const CourtsImageAsset({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: .78,
      child: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}
