import 'package:flutter/material.dart';

class AppThemeColors  {
  final MaterialColor primarySwatch;
  final Color primary;
  final Color primaryDark;
  final Color primaryLight;
  final Color textPrimary;
  final Color textSecondary;
  final Color textTertiary;
  final Color textOnPrimary;
  final Color border;
  final Color backgroundPrimary;
  final Color backgroundSecondary;
  final Color textHintColor;
  final List<Color> textPremium;
  final Color backgroundPremium;
  final Color textInactive;
  final Color borderCategory; 
  final Color borderFloatingActionButton;
  const AppThemeColors({
    required this.primarySwatch,
    required this.primary,
    required this.primaryDark,
    required this.primaryLight,
    required this.textPrimary,
    required this.textSecondary,
    required this.textTertiary,
    required this.border,
    required this.textOnPrimary,
    required this.backgroundPrimary,
    required this.backgroundSecondary,
    required this.textHintColor,  
    required this.textPremium,
    required this.backgroundPremium,
    required this.textInactive,
    required this.borderCategory,
    required this.borderFloatingActionButton,
  });

  AppThemeColors copyWith({
    MaterialColor? primarySwatch,
    Color? primary,
    Color? primaryDark,
    Color? primaryLight,
    Color? textPrimary,
    Color? textSecondary,
    Color? textTertiary,
    Color? textOnPrimary,
    Color? border,
    Color? backgroundPrimary,
    Color? backgroundSecondary,
    Color? textHintColor,
    List<Color>? textPremium,
    Color? textInactive,
    Color? borderFloatingActionButton,
    Color? borderCategory,
  }) {
    return AppThemeColors(
      primarySwatch: primarySwatch ?? this.primarySwatch,
      primary: primary ?? this.primary,
      primaryDark: primaryDark ?? this.primaryDark,
      primaryLight: primaryLight ?? this.primaryLight,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      textTertiary: textTertiary ?? this.textTertiary,
      textOnPrimary: textOnPrimary ?? this.textOnPrimary,
      border: border ?? this.border,
      backgroundPrimary: backgroundPrimary ?? this.backgroundPrimary,
      backgroundSecondary: backgroundSecondary ?? this.backgroundSecondary,
      textHintColor: textHintColor ?? this.textHintColor,
      textPremium: textPremium ?? this.textPremium,
      backgroundPremium: backgroundPremium ?? this.backgroundPremium,
      textInactive: textInactive ?? this.textInactive,
      borderCategory: borderCategory ?? this.borderCategory,
      borderFloatingActionButton: borderFloatingActionButton ?? this.borderFloatingActionButton,
    );
  }

  AppThemeColors lerp(covariant dynamic other, double t) {
    if (other is! AppThemeColors) return this;
    return AppThemeColors(
      primarySwatch: other.primarySwatch,
      primary: Color.lerp(primary, other.primary, t)!,
      primaryDark: Color.lerp(primaryDark, other.primaryDark, t)!,
      primaryLight: Color.lerp(primaryLight, other.primaryLight, t)!,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      textTertiary: Color.lerp(textTertiary, other.textTertiary, t)!,
      textOnPrimary: Color.lerp(textOnPrimary, other.textOnPrimary, t)!,
      border: Color.lerp(border, other.border, t)!,
      backgroundPrimary: Color.lerp(backgroundPrimary, other.backgroundPrimary, t)!,
      backgroundSecondary: Color.lerp(backgroundSecondary, other.backgroundSecondary, t)!,
      textHintColor: Color.lerp(textHintColor, other.textHintColor, t)!,
      textPremium: other.textPremium,
      backgroundPremium: other.backgroundPremium,
      textInactive: Color.lerp(textInactive, other.textInactive, t)!,
      borderCategory: Color.lerp(borderCategory, other.borderCategory, t)!,
      borderFloatingActionButton: Color.lerp(borderFloatingActionButton, other.borderFloatingActionButton, t)!,
    );
  }
}

/// ---- Brand Colors ----
abstract class AppColors {
  static const Color green        = Color(0xFF28AF6E); // Primary
  static const Color greenDark    = Color(0xFF0B1F14);
  static const Color greenLight   = Color(0xFF86EFAC);
  static const Color greenLight2   = Color(0xFF2CCC80);

  static const Color white        = Color(0xFFFFFFFF);
  static const Color deepGreen        = Color(0xFF13231B);
  static const Color grey         = Color(0xFF13231B);
  static const Color lightGrey    = Color(0xFF597165);
  static const Color hintGrey    = Color(0xFFAFAFAF);
  static const Color bottomGrey         = Color(0xFF979798);
  static const Color borderLight  = Color(0xFF3C3C43);
  static const Color backgroundPremium = Color(0xFF24201A);
  static const Color borderCategory = Color(0xFF29BB89);

  static const List<Color> goldGradient = [
  Color(0xFFE5C990), // açık altın
  Color(0xFFE4B046), // koyu altın
];

}

/// ---- Light theme ----
final AppThemeColors lightColors = AppThemeColors(
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
  textPremium: AppColors.goldGradient, 
  backgroundPremium: AppColors.backgroundPremium,
  textInactive: AppColors.bottomGrey, //
  border: AppColors.borderLight,
  borderCategory: AppColors.borderCategory,
  borderFloatingActionButton: AppColors.greenLight2,
);
