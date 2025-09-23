import 'package:flutter/material.dart';
import 'package:plant_app/core/themes/extensions.dart';

class GradientText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final List<Color>? gradientColors;
  final Alignment begin;
  final Alignment end;

  const GradientText(
    this.text, {
    Key? key,
    this.style,
    this.gradientColors,
    this.begin = Alignment.topLeft,
    this.end = Alignment.bottomRight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: gradientColors ?? context.colors.textPremium,
        begin: begin,
        end: end,
      ).createShader(bounds),
      child: Text(
        text,
        style: style?.copyWith(color: Colors.white) ?? 
               TextStyle(color: Colors.white),
      ),
    );
  }
}