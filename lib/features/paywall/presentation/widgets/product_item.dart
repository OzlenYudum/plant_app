import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plant_app/constants/app_assets.dart';
import 'package:plant_app/constants/app_strings.dart';
import 'package:plant_app/core/themes/extensions.dart';
import 'package:plant_app/core/themes/radius.dart';
import 'package:plant_app/core/themes/spacing.dart';
import 'package:plant_app/shared/widgets/highlighted_text.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.title,
    required this.description,
    this.savingPercantage,
    this.selected = false,
    this.highlightText,
  });
  final String title;
  final String description;
  final String? savingPercantage;
  final String? highlightText;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final fullHeight = size.height;
    return Stack(
      children: [
        ClipRRect(
          borderRadius: AppRadius.circularL,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 80, sigmaY: 80),
            child: Container(
              width: double.infinity,
              height: fullHeight > 740 ? fullHeight * 0.07875 : fullHeight * 0.09,
              padding: EdgeInsets.symmetric(horizontal: AppSpacing.l.w,vertical: AppSpacing.s.h),
              decoration: BoxDecoration(
                color: context.colors.backgroundSecondary.withOpacity(0.08),
                borderRadius: AppRadius.circularL,
                border: Border.all(
                  color: selected
                      ? context.colors.primary
                      : context.colors.textOnPrimary.withOpacity(0.30),
                  width:  selected ? 1.5.w : 0.5.w,
                ),
                gradient: selected
                    ? LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomRight,
                        colors: [
                          context.colors.primary.withOpacity(0.24), // %24
                          context.colors.primary.withOpacity(0.0), // %0
                        ],
                      )
                    : null,
              ),
              child: Row(
                //mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: AppSpacing.xxl.w,
                        height: AppSpacing.xxl.h,
                        padding: EdgeInsets.all(AppSpacing.xl.r),
                        decoration: BoxDecoration(
                          color: selected
                              ? context.colors.primary
                              : context.colors.backgroundPrimary.withOpacity(
                                  0.08,
                                ),
                          shape: BoxShape.circle,
                        ),
                        
                      ),
                       Container(
                          width: AppSpacing.s.w,
                          height: AppSpacing.s.h,
                          decoration: BoxDecoration(
                            color: selected
                                ? context.colors.backgroundPrimary
                                : Colors.transparent,
                            shape: BoxShape.circle,
                          ),
                        ),
                    ],
                  ),
                  AppSpacing.m.horizontalSpace,
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: context.typographies.body.withColor(
                          context.colors.textOnPrimary,
                        ),
                      ),
                      (highlightText != null)
                          ? HighlightedText(
                              text: description,
                              highlights: [highlightText!],
                              baseStyle: context.typographies.caption
                                  .withColor(
                                    context.colors.textOnPrimary.withOpacity(
                                      0.7,
                                    ),
                                  )
                                  .withWeight(FontWeight.w300),
                              highlightStyle: context.typographies.caption
                                  .withColor(context.colors.textOnPrimary)
                                  .withWeight(FontWeight.w400),
                            )
                          : Text(
                              description,
                              style: context.typographies.caption
                                  .withColor(
                                    context.colors.textOnPrimary.withOpacity(
                                      0.7,
                                    ),
                                  )
                                  .withWeight(FontWeight.w400),
                            ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
               if (savingPercantage != null)
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        width: 76.w,
                        height: 26.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSpacing.mm.w,
                          vertical: AppSpacing.xxs.h,
                        ),
                        decoration: BoxDecoration(
                          color: context.colors.primary,
                          borderRadius: BorderRadius.only(
                            topRight: 
                              AppRadius.circularL.topRight,
                            bottomLeft: AppRadius.circularXL.bottomLeft,
                            
                          ),
                        ),
                        child: Text(AppStrings.premiumSave50, style: context.typographies.caption.withColor(context.colors.textOnPrimary).withWeight(FontWeight.w500)),
                      ),
                    ),
      ],
    );
  }
}
