import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/constants/app_assets.dart';
import 'package:plant_app/constants/app_strings.dart';
import 'package:plant_app/core/themes/extensions.dart';
import 'package:plant_app/core/themes/radius.dart';
import 'package:plant_app/core/themes/spacing.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: AppRadius.circularM,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: context.colors.backgroundPrimary.withOpacity(0.88),
            borderRadius: AppRadius.circularM,
            border: Border.all(color: context.colors.border.withOpacity(0.25),width: 0.2.w),
          ),
          child: TextField(
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              isCollapsed: true,
              hintText: AppStrings.homeSearchHint,
              hintStyle: context.typographies.captionLarge
                  .withColor(context.colors.textHintColor)
                  .withSize(15.5)
                  .copyWith(letterSpacing: 0.07),
              prefixIcon: Padding(
                padding: EdgeInsets.only(left: AppSpacing.xl.w, right: AppSpacing.m.w),
                child: SvgPicture.asset(
                  AppAssets.searchIcon,
                  width: 20.w,
                  height: 20.h,
                 
                ),
              ),
              prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 44.h),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 13.h),

            ),
          ),
        ),
      ),
    );
  }
}