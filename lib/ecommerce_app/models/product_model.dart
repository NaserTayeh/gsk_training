import 'rating.dart';

class Product {
  int? id;
  String? title;
  dynamic? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;
  Product(
      {this.id,
      this.title,
      this.price,
      this.description,
      this.category,
      this.image,
      this.rating});
  Product.fromMap(Map<String, dynamic>? map) {
    this.id = map?['id'];
    this.title = map?['title'];
    this.price = map?['price'];
    this.description = map?['description'];
    this.category = map?['category'];
    this.image = map?['image'];
    this.rating = Rating.fromMap(map?['rating']);
  }
}
