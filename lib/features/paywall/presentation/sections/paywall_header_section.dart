import 'package:flutter/material.dart';
import 'package:plant_app/constants/app_strings.dart';
import 'package:plant_app/core/themes/extensions.dart';
import 'package:plant_app/shared/widgets/highlighted_text.dart';

class PaywallHeaderSection extends StatelessWidget {
  const PaywallHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HighlightedText(text: AppStrings.premiumTitle, highlights:[AppStrings.plantAppHighlight], baseStyle: context.typographies.heading.withColor(context.colors.textOnPrimary), highlightStyle: context.typographies.heading.withWeight(FontWeight.w900).withColor(context.colors.textOnPrimary)),
        Text(AppStrings.premiumSubtitle, style: context.typographies.captionExtraLarge.withColor(context.colors.textOnPrimary.withOpacity(0.7))),
      ],
    );
  }
}