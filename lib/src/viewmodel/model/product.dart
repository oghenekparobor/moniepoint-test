class ProductModel {
  ProductModel({
    required this.id,
    required this.image,
    required this.name,
    required this.price,
    required this.type,
    required this.images,
  });

  final String id;
  final String image;
  final String name;
  final String price;
  final String type;
  final List<String> images;
}
