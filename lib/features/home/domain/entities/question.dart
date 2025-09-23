class Question {
  final int id;
  final String title;      // Soru başlığı
  final String subtitle;   // Alt başlık
  final String imageUrl;   // image_uri
  final String link;       // uri (makale/blog linki)
  final int order;         // sıralama için

  const Question({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.link,
    required this.order,
  });
}
