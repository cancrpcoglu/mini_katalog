class Product {
  final int id;
  final String name;
  final String category;
  final double price;
  final int stock;
  final String description;
  final String imageUrl;

  Product({
    required this.id,
    required this.name,
    required this.category,
    required this.price,
    required this.stock,
    required this.description,
    required this.imageUrl,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: int.tryParse(json['id'].toString()) ?? 0,
      name: json['name'] ?? '',
      category: json['category'] ?? 'Apple',
      price:
          double.tryParse(
            json['price']
                .toString()
                .replaceAll('\$', '')
                .replaceAll(',', '')
                .trim(),
          ) ??
          0.0,
      stock: 10,
      description: json['description'] ?? '',
      imageUrl: json['image'] ?? '',
    );
  }
}
