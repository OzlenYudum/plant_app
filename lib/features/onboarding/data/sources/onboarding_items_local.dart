// features/onboarding/data/sources/onboarding_items_local.dart
import 'package:plant_app/constants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/constants/app_strings.dart';
import '../../domain/entities/onboarding_item.dart';

class OnboardingItemsLocal {
  static List<OnboardingItem> get items =>  [
    OnboardingItem(
      title: AppStrings.onboardingWelcomeTitle,
      subtitle: AppStrings.onboardingWelcomeSubtitle,
      highlight: "PlantApp",
      imageAsset: AppAssets.onboarding1,
      footer: OnbFooter.terms,
      highlightWeight: FontWeight.w700,
      baseWeight: FontWeight.w400,
    ),
    OnboardingItem(
      title: AppStrings.onboardingIdentifyTitle,
      highlight: "identify",
      imageAsset: AppAssets.onboarding2,
      footer: OnbFooter.dots,
      highlightWeight: FontWeight.w800,
      baseWeight: FontWeight.w500,
      brushAsset: AppAssets.brush,
      topPosition: 54,
      rightPosition: 50,
    ),
    OnboardingItem(
      title: AppStrings.onboardingCareGuidesTitle,
      highlight: "care guides",
      imageAsset: AppAssets.onboarding3,
      footer: OnbFooter.dots,
      highlightWeight: FontWeight.w800,
      baseWeight: FontWeight.w500,
      brushAsset: AppAssets.brush,
      topPosition: 54,
      rightPosition: 90,
    ),
  ];
}
