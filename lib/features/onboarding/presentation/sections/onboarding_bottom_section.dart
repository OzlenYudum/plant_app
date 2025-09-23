import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plant_app/core/themes/spacing.dart';
import 'package:plant_app/shared/widgets/primary_button.dart';

class OnboardingBottomSection extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  /// Opsiyonel alt alan: Terms of Use metni veya Dots indicator gibi herhangi bir widget
  final Widget footer;
  const OnboardingBottomSection({
    super.key,
    required this.buttonText,
    required this.onPressed,
    required this.footer,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110.h,
      child: Column(
        children: [
          PrimaryButton(text: buttonText, onPressed: onPressed),
          AppSpacing.xl.verticalSpace,
          footer,
         // AppSpacing.s.verticalSpace,
      
        ],
      ),
    );
  }
}