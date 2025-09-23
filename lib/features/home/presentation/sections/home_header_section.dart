import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plant_app/constants/app_assets.dart';
import 'package:plant_app/core/themes/extensions.dart';
import 'package:plant_app/core/themes/spacing.dart';
import 'package:plant_app/features/home/presentation/widgets/greeting_title.dart';
import 'package:plant_app/features/home/presentation/widgets/home_search_bar.dart';

class HomeHeaderSection
 extends StatelessWidget {
  const HomeHeaderSection
  ({super.key});

   @override
  Widget build(BuildContext context) {
    
    return LayoutBuilder(
      builder: (context, constraints) {
        final topInset = MediaQuery.paddingOf(context).top; // status bar
        final bodyHeight = constraints.maxWidth * (175 / 360); // Figma: 360x175
        final totalHeight = bodyHeight + topInset; // oran + safe area

        return SizedBox(
          height: totalHeight,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                AppAssets.homeBackground,
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
              SafeArea(
                bottom: false,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: AppSpacing.xll.w,
                    right: AppSpacing.xll.w,
                    top: AppSpacing.xxxl.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GreetingTitle(),
                      AppSpacing.xl.verticalSpace,
                      HomeSearchBar(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}