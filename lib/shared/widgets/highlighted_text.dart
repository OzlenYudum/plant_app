import 'package:flutter/material.dart';

/// A reusable widget that highlights specific words inside a text.
///
/// Example:
/// ```dart
/// HighlightedText(
///   text: "Welcome to PlantApp",
///   highlights: const ["PlantApp"],
///   baseStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
///   highlightStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
///   gradient: [Color(0xFFE5C990), Color(0xFFE4B046)],
/// )
/// ```
class HighlightedText extends StatelessWidget {
  final String text;
  final List<String> highlights;
  final TextStyle baseStyle;
  final TextStyle highlightStyle;
  final TextAlign textAlign;
  final int? maxLines;
  final TextOverflow overflow;
  
  // Tek gradient parametresi (hem base hem highlight için)
  final List<Color>? gradient;
  final Alignment gradientBegin;
  final Alignment gradientEnd;

  const HighlightedText({
    super.key,
    required this.text,
    required this.highlights,
    required this.baseStyle,
    required this.highlightStyle,
    this.textAlign = TextAlign.start,
    this.maxLines,
    this.overflow = TextOverflow.visible,
    this.gradient,
    this.gradientBegin = Alignment.topLeft,
    this.gradientEnd = Alignment.bottomRight,
  });

  @override
  Widget build(BuildContext context) {
    final textWidget = _buildTextWidget();
    
    // Gradient varsa tüm widget'ı gradient ile sarmala
    if (gradient != null) {
      return ShaderMask(
        shaderCallback: (bounds) => LinearGradient(
          colors: gradient!,
          begin: gradientBegin,
          end: gradientEnd,
        ).createShader(bounds),
        child: textWidget,
      );
    }
    
    return textWidget;
  }

  Widget _buildTextWidget() {
    // hiç highlight verilmemişse -> normal Text
    if (highlights.isEmpty) {
      return Text(
        text,
        style: gradient != null 
          ? baseStyle.copyWith(color: Colors.white) 
          : baseStyle,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow,
      );
    }

    final spans = <TextSpan>[];
    String remaining = text;

    while (remaining.isNotEmpty) {
      int matchIndex = -1;
      String? matchWord;

      for (final h in highlights) {
        final i = remaining.toLowerCase().indexOf(h.toLowerCase());
        if (i >= 0) {
          matchIndex = i;
          matchWord = remaining.substring(i, i + h.length);
          break;
        }
      }

      if (matchIndex == -1) {
        spans.add(TextSpan(
          text: remaining, 
          style: gradient != null 
            ? baseStyle.copyWith(color: Colors.white) 
            : baseStyle,
        ));
        break;
      } else {
        if (matchIndex > 0) {
          spans.add(TextSpan(
            text: remaining.substring(0, matchIndex), 
            style: gradient != null 
              ? baseStyle.copyWith(color: Colors.white) 
              : baseStyle,
          ));
        }
        spans.add(TextSpan(
          text: matchWord, 
          style: gradient != null 
            ? highlightStyle.copyWith(color: Colors.white) 
            : highlightStyle,
        ));
        remaining = remaining.substring(matchIndex + matchWord!.length);
      }
    }

    return Text.rich(
      TextSpan(children: spans),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
