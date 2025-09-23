import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:plant_app/constants/app_assets.dart';
import 'package:plant_app/core/navigation/navigation.dart';
import 'package:plant_app/core/themes/extensions.dart';
import 'package:plant_app/core/themes/spacing.dart';
import 'package:plant_app/features/paywall/presentation/sections/paywall_bottom_section.dart';
import 'package:plant_app/features/paywall/presentation/sections/paywall_header_section.dart';
import 'package:plant_app/features/paywall/presentation/sections/paywall_product_features_section.dart';
import 'package:plant_app/features/paywall/presentation/sections/paywall_products_section.dart';

class PaywallPage extends StatelessWidget {
  const PaywallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.backgroundSecondary,
      body: Stack(
        children: [
          AspectRatio(
            aspectRatio: 360 / 465,
            child: Image.asset(
              AppAssets.paywallPlant,
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
          ),
          Positioned(
            top: 38.h,
            right: 45.w,
            child: GestureDetector(
              onTap: () {
                final canPop = Navigator.of(context).canPop();
                if (canPop) {
                  context.pop(true);
                } else {
                  context.go(AppRoute.home);
                }
              },
              child: SvgPicture.asset(AppAssets.paywallCloseIcon,width: 24.w,height: 24.h,),
            ),
          ),
          
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSpacing.l.w),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  PaywallHeaderSection(),
                  AppSpacing.xxl.verticalSpace,
                  PaywallProductFeaturesSection(),
                  AppSpacing.xxl.verticalSpace,
                  PaywallProductsSection(),
                  AppSpacing.xxl.verticalSpace,
                  PaywallBottomSection(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
