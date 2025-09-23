import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plant_app/core/themes/extensions.dart';
import 'package:plant_app/core/themes/radius.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, required this.text, required this.onPressed});
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56.h,
      decoration: BoxDecoration(
        color: context.colors.primary,
        borderRadius: AppRadius.circularM,
      ),
      child: InkWell(
        onTap: onPressed,
        child: Center(child: Text(text, style: context.typographies.body.withColor(context.colors.textOnPrimary).withWeight(FontWeight.w600),))
        ),
    );
  }
}