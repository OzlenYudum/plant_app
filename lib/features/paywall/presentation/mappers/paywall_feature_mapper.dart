import 'package:plant_app/constants/app_assets.dart';
import 'package:plant_app/features/paywall/domain/entities/paywall_feature_item.dart';

String iconForPaywallFeature(PaywallFeatureType type) {
  switch (type) {
    case PaywallFeatureType.unlimitedIdentify:
      return AppAssets.unlimitedIcon;
    case PaywallFeatureType.fasterProcess:
      return AppAssets.fastIcon;
    case PaywallFeatureType.adFreeExperience:
      return AppAssets.fastIcon;
  }
}

extension PaywallFeatureUiX on PaywallFeature {
  String get iconAsset => iconForPaywallFeature(type);
}