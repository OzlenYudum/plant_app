enum PaywallFeatureType {
  unlimitedIdentify, // “Unlimited — Plant Identify”
  fasterProcess,     // “Faster — Process”
  adFreeExperience,  // “Ad‑Free — No ads”
}
class PaywallFeature {
  final PaywallFeatureType type;
  final String title;
  final String description;

  const PaywallFeature({
    required this.type,
    required this.title,
    required this.description,
  });
}