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
  
  factory Product.parser(Map<String, dynamic> dataa) {
    return Product(
      barcode: dataa["barcode"],
      count: dataa["count"],
      createdAt: dataa["created_at"],
      createdAtConvert: dataa["created_at_convert"],
      createdAtMoment: dataa["created_at_moment"],
      authors: dataa["authors"]
          .map<Author>((json) => Author.authorparser(json))
          .toList(),
    );
  }
}
