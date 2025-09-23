// app_theme.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';      // AppThemeColors
import 'typography.dart';  // AppThemeTypography (Roboto + .sp kullanıyorsan)

class AppTheme extends ThemeExtension<AppTheme> {
  final String name;
  final Brightness brightness;
  final AppThemeColors colors;
  final AppThemeTypography typographies;

  const AppTheme({
    required this.name,
    required this.brightness,
    required this.colors,
    this.typographies = const AppThemeTypography(),
  });

  ColorScheme get _base =>
      brightness == Brightness.light ? const ColorScheme.light() : const ColorScheme.dark();

  ThemeData get themeData {
    return ThemeData(
      useMaterial3: false,
      brightness: brightness,
      fontFamily: 'Roboto',
      extensions: [this],
      scaffoldBackgroundColor: colors.backgroundPrimary,
      colorScheme: _base.copyWith(
        primary: colors.primary,
        onPrimary: colors.textOnPrimary,
        secondary: colors.primaryLight,
        onSecondary: colors.textOnPrimary,
        surface: colors.backgroundPrimary,
        onSurface: colors.textPrimary,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        surfaceTintColor: Colors.transparent,
        foregroundColor: colors.textPrimary,
        titleTextStyle: typographies.heading,
      ),
      textTheme: (brightness == Brightness.light ? ThemeData.light() : ThemeData.dark()).textTheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.disabled)) return colors.textInactive;
            return colors.primary;
          }),
          foregroundColor: WidgetStatePropertyAll(colors.textOnPrimary),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)), // AppRadius.md de verebilirsin
          ),
          elevation: const WidgetStatePropertyAll(0),
        ),
      ),
    );
  }

  // ---- ThemeExtension zorunluları ----
  @override
  AppTheme copyWith({
    String? name,
    Brightness? brightness,
    AppThemeColors? colors,
    AppThemeTypography? typography,
  }) {
    return AppTheme(
      name: name ?? this.name,
      brightness: brightness ?? this.brightness,
      colors: colors ?? this.colors,
      typographies: typography ?? typographies,
    );
  }

  @override
  AppTheme lerp(ThemeExtension<AppTheme>? other, double t) {
    if (other is! AppTheme) return this;
    return AppTheme(
      name: t < 0.5 ? name : other.name,
      brightness: t < 0.5 ? brightness : other.brightness,
      colors: colors.lerp(other.colors, t),
      typographies: typographies.lerp(other.typographies, t),
    );
  }
}
