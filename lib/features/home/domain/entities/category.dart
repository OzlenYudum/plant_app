class Category {
  final int id;
  final String name;      
  final String title;     // Gösterilecek başlık
  final int rank;         // Sıralama için
  final String imageUrl;  // category.image.url

  const Category({
    required this.id,
    required this.name,
    required this.title,
    required this.rank,
    required this.imageUrl,
  });
}
