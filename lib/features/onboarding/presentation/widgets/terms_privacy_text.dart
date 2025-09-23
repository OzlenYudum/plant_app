import 'package:flutter/material.dart';
import 'package:plant_app/constants/app_strings.dart';
import 'package:plant_app/core/themes/extensions.dart';

class TermsPrivacyText extends StatelessWidget {
  const TermsPrivacyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          AppStrings.termPrivacyText,
          textAlign: TextAlign.center,
          style: context.typographies.caption
              .withSize(11)
              .withColor(context.colors.textTertiary.withOpacity(0.7)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: Size(0, 0),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: Text(
                AppStrings.termsOfUseText,
                style: context.typographies.caption
                  .withSize(11)
                  .withColor(context.colors.textTertiary.withOpacity(0.7))
                  .copyWith(decoration: TextDecoration.underline,),
                ),
              ),
            Text(
              AppStrings.andOperator,
              style: context.typographies.caption
                  .withSize(11)
                  .withColor(context.colors.textTertiary.withOpacity(0.7)),
            ),
            TextButton(
              onPressed: () {
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: Size(0, 0),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: Text(
                AppStrings.privacyPolicyText,
                   style: context.typographies.caption
                  .withSize(11)
                  .withColor(context.colors.textTertiary.withOpacity(0.7))
                  .copyWith(decoration: TextDecoration.underline,),
              ),
            ),
          ],  
        ),
      ],
    );
  }
}