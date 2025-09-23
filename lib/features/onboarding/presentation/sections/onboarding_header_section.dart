import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plant_app/core/themes/extensions.dart';
import 'package:plant_app/core/themes/spacing.dart';
import 'package:plant_app/shared/widgets/highlighted_text.dart';

class OnboardingHeaderSection extends StatelessWidget {
  final String title;
  final String highlight;
  final String subtitle;

  /// Highlight kısmının ağırlığı (default: w700 → Bold)
  final FontWeight highlightWeight;
  final FontWeight baseWeight;

  const OnboardingHeaderSection({
    super.key,
    required this.title,
    required this.highlight,
    required this.subtitle,
    this.highlightWeight = FontWeight.w800, // ✅ default
    this.baseWeight = FontWeight.w400,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HighlightedText(
          text: title,
          highlights: [highlight],
          baseStyle: context.typographies.headingLarge.withColor(
            context.colors.textPrimary,
          ).withWeight(baseWeight),
          highlightStyle: context.typographies.headingLarge.withWeight(
             highlightWeight, // ✅ parametreden geliyor
          ).withColor(context.colors.textPrimary),
          textAlign: TextAlign.start,
        ),
        AppSpacing.s.verticalSpace,
        Text(
          subtitle,
          style: context.typographies.captionLarge.withColor(
            context.colors.textPrimary.withOpacity(0.7),
          ),
        ),
      ],
    );
  }
}
