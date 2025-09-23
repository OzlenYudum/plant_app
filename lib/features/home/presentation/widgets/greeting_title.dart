import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plant_app/constants/app_strings.dart';
import 'package:plant_app/core/themes/extensions.dart';
import 'package:plant_app/core/themes/spacing.dart';

class GreetingTitle extends StatelessWidget {
  const GreetingTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.homeGreetingTitle,
          style: context.typographies.captionLarge.withColor(
            context.colors.textPrimary,
          ),
        ),
        AppSpacing.xs.verticalSpace,
        Text(
          AppStrings.homeGreetingSubtitle,
          style: context.typographies.headingSmall.withColor(
            context.colors.textPrimary,
          ),
        ),
      ],
    );
  }
}
