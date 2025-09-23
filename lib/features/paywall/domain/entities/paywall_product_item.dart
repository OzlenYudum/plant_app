enum PaywallProductType {
  monthly,
  yearly,
}

class PaywallProduct {
  final PaywallProductType type;
  final String title;
  final String description;
  final String? savingPercantage; 
  final String? highlightText;    

  const PaywallProduct({
    required this.type,
    required this.title,
    required this.description,
    this.savingPercantage,
    this.highlightText,
  });
}