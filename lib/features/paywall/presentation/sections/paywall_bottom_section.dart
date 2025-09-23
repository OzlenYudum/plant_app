import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plant_app/constants/app_strings.dart';
import 'package:plant_app/core/themes/spacing.dart';
import 'package:plant_app/features/paywall/presentation/widgets/auto_renewable_text.dart';
import 'package:plant_app/features/paywall/presentation/widgets/terms_privacy_restore_text.dart';
import 'package:plant_app/shared/widgets/primary_button.dart';
import 'package:plant_app/features/paywall/presentation/bloc/paywall_bloc.dart';

class PaywallBottomSection extends StatelessWidget {
  const PaywallBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = context.select<PaywallBloc, int>(
      (b) => b.state.selectedIndex,
    );
    final buttonText = selectedIndex == 0 ? AppStrings.continueText : AppStrings.premiumTrial;

    return Column(
      children: [
        PrimaryButton(
          text: buttonText,
          onPressed: () {
            // handle action based on selectedIndex
          },
        ),
        AppSpacing.m.verticalSpace,
        AutoRenewableText(data: AppStrings.premiumFooter),
        AppSpacing.s.verticalSpace,
        TermsPrivacyRestoreText(data: AppStrings.premiumTerms),
        AppSpacing.m.verticalSpace,
      ],
    );
  }
}