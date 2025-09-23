import 'package:flutter/material.dart';
import 'package:plant_app/core/themes/extensions.dart';

class TermsPrivacyRestoreText extends StatelessWidget {
  const TermsPrivacyRestoreText({super.key, required this.data});
  final String data;
  @override
  Widget build(BuildContext context) {
    return Text(data, style: context.typographies.bodySmall.withWeight(FontWeight.w400).withSize(11).withColor(context.colors.textOnPrimary.withOpacity(0.50)));
  }
}