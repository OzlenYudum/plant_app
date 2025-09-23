import 'package:plant_app/constants/app_strings.dart';
import 'package:plant_app/features/paywall/domain/entities/paywall_product_item.dart';

const paywallStaticProducts = <PaywallProduct>[
  PaywallProduct(
    type: PaywallProductType.monthly,
    title: AppStrings.premium1MonthTitle,
    highlightText: AppStrings.autoRenewableHighlight,
    description: AppStrings.premium1MonthSubtitle,
  ),
  PaywallProduct(
    type: PaywallProductType.yearly,
    title: AppStrings.premium1YearTitle,
    description: AppStrings.premium1YearSubtitle,
    savingPercantage: '50%',
  ),
];