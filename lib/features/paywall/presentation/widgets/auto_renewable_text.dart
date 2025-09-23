import 'package:flutter/material.dart';
import 'package:plant_app/core/themes/extensions.dart';

class AutoRenewableText extends StatelessWidget {
  const AutoRenewableText({super.key, required this.data});
  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(data, style: context.typographies.captionSmall.withColor(context.colors.textOnPrimary.withOpacity(0.52)),textAlign: TextAlign.center,);
  }
}