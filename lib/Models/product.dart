import 'package:twoo/Models/author.dart';

class Product {
  String barcode;
  int count;
  String createdAt;
  String createdAtConvert;
  String createdAtMoment;
  List<Author>authors;
  

  Product({
    this.barcode,
    this.count,
    this.createdAt,
    this.createdAtConvert,
    this.createdAtMoment,
    this.authors,
  });
  
  factory Product.parser(Map<String, dynamic> data1) {
    return Product(
      barcode: data1["barcode"],
      count: data1["count"],
      createdAt: data1["created_at"],
      createdAtConvert: data1["created_at_convert"],
      createdAtMoment: data1["created_at_moment"],
      authors: data1["authors"]
          .map<Author>((json) => Author.authorparser(json))
          .toList(),
    );
  }
}
