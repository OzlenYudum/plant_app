import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/core/themes/extensions.dart';
import 'package:plant_app/core/themes/radius.dart';
import 'package:plant_app/core/themes/spacing.dart';

class ProductFeatureItem extends StatelessWidget {
  const ProductFeatureItem({super.key, required this.title, required this.description, required this.icon});
  final String title;
  final String description;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
     borderRadius: AppRadius.circularL,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: AppSpacing.xl.w, vertical: AppSpacing.xl.h),
          decoration: BoxDecoration(
            color: context.colors.backgroundPrimary.withOpacity(0.08),
            borderRadius: AppRadius.circularL,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(icon),
              Text(title, style: context.typographies.bodyExtraLarge.withColor(context.colors.textOnPrimary)),
              Text(description, style: context.typographies.caption.withColor(context.colors.textOnPrimary.withOpacity(0.7)).withWeight(FontWeight.w400)),
            ],
          ),
        ),
      ),
    );
  }
}