// lib/features/onboarding/presentation/widgets/onboarding_page_indicator.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/themes/spacing.dart';
import '../../../../core/themes/extensions.dart';

class OnboardingPageIndicator extends StatelessWidget {
  const OnboardingPageIndicator({
    super.key,
    required this.controller,
    required this.count,
    this.inactiveWidth,
    this.inactiveHeight,
    this.activeWidth,
    this.activeHeight,
    this.spacing,
    this.activeColor,
    this.inactiveColor,
    this.borderRadius,
  });

  final PageController controller;
  final int count;

  final double? inactiveWidth;
  final double? inactiveHeight;
  final double? activeWidth;
  final double? activeHeight;
  final double? spacing;
  final Color? activeColor;
  final Color? inactiveColor;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

  return AnimatedBuilder(
  animation: controller,
  builder: (context, _) {
    final page = controller.hasClients
        ? (controller.page ?? controller.initialPage.toDouble())
        : 0.0;

    final int activeIndex = ((page - 1).round()).clamp(0, count - 1);

    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: count, 
      effect: CustomizableEffect(
        spacing: spacing ?? AppSpacing.s.w,
        dotDecoration: DotDecoration(
          width: inactiveWidth ?? AppSpacing.xs.w,
          height: inactiveHeight ?? AppSpacing.xs.h,
          color: (inactiveColor ?? colors.textPrimary.withOpacity(0.25)),
          borderRadius: BorderRadius.circular(borderRadius ?? AppSpacing.m.w),
        ),
        activeDotDecoration: DotDecoration(
          width: activeWidth ?? AppSpacing.m.w,
          height: activeHeight ?? AppSpacing.m.h,
          color: activeColor ?? colors.textPrimary,
          borderRadius: BorderRadius.circular(borderRadius ?? AppSpacing.m.w),
        ),
      ),
    );
  },
);
  }
}