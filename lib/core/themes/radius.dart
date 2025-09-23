import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Uygulama genelinde kullanılan radius değerleri.
/// ScreenUtil ile responsive çalışır.
class AppRadius {
  // --- Raw double değerler (responsive) ---

  static double get m => 12.r;
  static double get l => 14.r;
  static double get xl => 20.r;

  // --- BorderRadius hazır tanımlar ---
  static BorderRadius get circularM => BorderRadius.circular(m);
  static BorderRadius get circularL => BorderRadius.circular(l);
  static BorderRadius get circularXL => BorderRadius.circular(xl);
}
