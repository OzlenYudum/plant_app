import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/constants/app_assets.dart';
import 'package:plant_app/constants/app_strings.dart';
import 'package:plant_app/core/themes/extensions.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key, required this.onTap, required this.currentIndex});
  final Function(int) onTap;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    // FAB: 66.w + dış çember vs. için biraz marj
    final double centerGap = 66.w;

    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 45, sigmaY: 45),
        child: Container(
          height: 80.h,
          decoration: BoxDecoration(
            color: context.colors.backgroundPrimary.withOpacity(0.92),
            border: Border(top: BorderSide(color: context.colors.textSecondary.withOpacity(0.1), width: 1)),
          ),
          // Özelleştirilmiş bar: item aralığı kontrolü Row ile
          child: Row(
            children: [
              _navItem(context, asset: AppAssets.homeIcon,       label: AppStrings.navHome,     index: 0),
              _navItem(context, asset: AppAssets.healthcareIcon, label: AppStrings.navDiagnose, index: 1),
              SizedBox(width: centerGap), 
              _navItem(context, asset: AppAssets.leafIcon,       label: AppStrings.navMyGarden, index: 2),
              _navItem(context, asset: AppAssets.profileIcon,    label: AppStrings.navProfile,  index: 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget _navItem(
    BuildContext context, {
    required String asset,
    required String label,
    required int index,
  }) {
    final bool isSelected = currentIndex == index;
    final ColorFilter color = ColorFilter.mode(
      isSelected ? context.colors.primary : context.colors.textInactive,
      BlendMode.srcIn,
    );
    final TextStyle labelStyle = (isSelected
            ? context.typographies.caption.withColor(context.colors.primary)
            : context.typographies.caption.withColor(context.colors.textInactive))
        .withSize(11)
        .copyWith(letterSpacing: -0.24);

    return Expanded(
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: () => onTap(index),
          splashColor:context.colors.primary.withOpacity(0.1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SvgPicture.asset(
                asset,
                height: 24.h,
                width: 24.w,
                colorFilter: color,
              ),
              SizedBox(height: 6.h),
              Text(label, style: labelStyle),
            ],
          ),
        ),
      ),
    );
  }
}