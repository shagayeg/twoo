import 'package:twoo/Models/product.dart';

class CategoriesWithProducts {
  String id;
  String name;
  String image;
  bool main;
  List<Product> products;

  CategoriesWithProducts(
      {this.id, this.image, this.main, this.name, this.products});

  factory CategoriesWithProducts.parser(Map<String, dynamic> data) {
    return CategoriesWithProducts(
      id: data["id"],
      image: data["image"],
      main: data["main"],
      name: data["name"],
      products: data["products"]
          .map<Product>((json) => Product.productparser(json))
          .toList(),
    );
  }
}
