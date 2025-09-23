import 'package:flutter/material.dart';
import 'package:plant_app/core/themes/colors.dart';
import 'package:plant_app/core/themes/themes.dart';

class LightAppTheme extends AppTheme {
  const LightAppTheme()
    : super(
        name: 'light',
        brightness: Brightness.light,
        colors: const AppThemeColors(
          primarySwatch: Colors.green,
          primary: AppColors.green, // yesil
          primaryDark: AppColors.greenDark,
          primaryLight: AppColors.greenLight,
          backgroundPrimary: AppColors.white, // beyaz arkaplan
          backgroundSecondary: AppColors.greenDark, // koyu yesil arkaplan
          textPrimary: AppColors.deepGreen, //
          textSecondary: AppColors.grey, //
          textTertiary: AppColors.lightGrey, //
          textOnPrimary: AppColors.white,
          textHintColor: AppColors.hintGrey, //
          textPremium: AppColors.goldGradient, //
          textInactive: AppColors.bottomGrey, //
          border: AppColors.borderLight,
          backgroundPremium: AppColors.backgroundPremium,
          borderCategory: AppColors.borderCategory,
          borderFloatingActionButton: AppColors.greenLight2,
        ),
      );
}
