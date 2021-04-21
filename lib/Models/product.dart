class Product {
  String barcode;
  int count;
  String createdAt;
  String createdAtConvert;
  String createdAtMoment;

  Product({
    this.barcode,
    this.count,
    this.createdAt,
    this.createdAtConvert,
    this.createdAtMoment,
  });

  factory Product.productparser(Map<String, dynamic> data) {
    return Product(
      barcode: data["barcode"],
      count: data["count"],
      createdAt: data["created_at"],
      createdAtConvert: data["created_at_convert"],
      createdAtMoment: data["created_at_moment"],
    );
  }
}
