import 'package:plant_app/features/paywall/domain/entities/paywall_feature_item.dart';

const List<PaywallFeature> PaywallStaticFeatures = [
  PaywallFeature(
    type: PaywallFeatureType.unlimitedIdentify,
    title: 'Unlimited',
    description: 'Plant Identify',
  ),
  PaywallFeature(
    type: PaywallFeatureType.fasterProcess,
    title: 'Faster',
    description: 'Process',
  ),
  PaywallFeature(
    type: PaywallFeatureType.adFreeExperience,
    title: 'Ad‑Free',
    description: 'No ads',
  ),
];