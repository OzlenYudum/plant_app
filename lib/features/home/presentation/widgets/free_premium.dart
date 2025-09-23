import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/constants/app_assets.dart';
import 'package:plant_app/constants/app_strings.dart';
import 'package:plant_app/core/themes/extensions.dart';
import 'package:plant_app/core/themes/radius.dart';
import 'package:plant_app/core/themes/spacing.dart';
import 'package:plant_app/shared/widgets/gradient_text.dart';
import 'package:plant_app/shared/widgets/highlighted_text.dart';

class FreePremium extends StatelessWidget {
  const FreePremium({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colors.backgroundPremium,
        borderRadius: AppRadius.circularM,
      ),
      width: double.infinity,
      
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: AppSpacing.xl.w,vertical: AppSpacing.mm.h),
        child: Center(child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
          SvgPicture.asset(AppAssets.envelopeIcon,width: 40.w,height: 40.h),
          Spacer(flex: 1),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              HighlightedText(text: AppStrings.homeFreePremiumTitle, highlights:[ AppStrings.freePremiumHighlight], baseStyle: context.typographies.body.withWeight(FontWeight.w600), highlightStyle: context.typographies.body.withWeight(FontWeight.w700),gradient: context.colors.textPremium,),
              GradientText(AppStrings.homeFreePremiumSubtitle, style: context.typographies.caption.withSize(13), gradientColors: context.colors.textPremium,),
            ],
          ),
          Spacer(flex: 3,),
          SvgPicture.asset(AppAssets.arrowRightIcon,width: 24.w,height: 24.h),
        ]),
            ),
      ),
  ); 
      
  }
}
