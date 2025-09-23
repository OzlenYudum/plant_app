import 'package:flutter/material.dart';

class OnboardingImageSection extends StatelessWidget {
  final String assetPath;

  const OnboardingImageSection({
    super.key,
    required this.assetPath,
  });

   @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 360 / 670,
      child: Image.asset(
        assetPath,
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
      ),
    );
  }
}
