import 'package:flutter/material.dart';
import 'package:plant_app/core/themes/colors.dart';
import 'package:plant_app/core/themes/themes.dart';

class DarkAppTheme extends AppTheme {
  const DarkAppTheme()
      : super(
          name: 'dark',
          brightness: Brightness.dark,
          colors: const AppThemeColors(
            primarySwatch: Colors.green,
            borderCategory: AppColors.borderCategory,
            borderFloatingActionButton: AppColors.greenLight2,
            // Dark: koyu zeminde daha görünür olması için primary biraz daha parlak
            primary: AppColors.greenLight,
            primaryDark: AppColors.green,
            primaryLight: AppColors.greenLight,

            // Zeminler koyu
            backgroundPrimary: AppColors.greenDark,   // ana arka plan (koyu)
            backgroundSecondary: AppColors.deepGreen, // ikincil arka plan (bir ton açık/koyu varyant)

            // Metinler açık tonlar
            textPrimary: AppColors.white,       // ana metin
            textSecondary: AppColors.lightGrey, // ikincil metin
            textTertiary: AppColors.grey,       // üçüncül metin

            // Kontrast için primary üstü yazılar yine beyaz
            textOnPrimary: AppColors.white,

            // Yardımcı metin/özellikler
            textHintColor: AppColors.hintGrey,
            textPremium: AppColors.goldGradient,
            textInactive: AppColors.bottomGrey,

            // Sınır/ayraç
            // (light'taki borderLight koyuda da yeterince görünür; istersen lightGrey de kullanabilirsin)
            border: AppColors.lightGrey,
            backgroundPremium: AppColors.backgroundPremium,
          ),
        );
}
