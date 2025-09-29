import 'package:flutter/material.dart';

enum OnbFooter { terms, dots }

class OnboardingItem {
  final String title;
  final String? subtitle;
  final String? highlight;
  final FontWeight? highlightWeight;
  final FontWeight? baseWeight;
  final String imageAsset;
  final OnbFooter footer;
  final String? brushAsset;
  final double? topPosition;
  final double? rightPosition;

  const OnboardingItem({
    required this.title,
    this.subtitle,
    this.highlight,
    this.highlightWeight = FontWeight.w700,
    required this.imageAsset,
    required this.footer,
    this.baseWeight = FontWeight.w400,
    this.brushAsset,
    this.topPosition,
    this.rightPosition,
  });
}
