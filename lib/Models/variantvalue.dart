
import 'package:twoo/Models/discount.dart';

class Variantvalue{

  int count;
  int discountedkind;
  int discountedamount;
  int discountedprice;
  int price;
  List<Discount>discount;

  Variantvalue({
    this.count,
    this.discountedamount,
    this.discountedkind,
    this.discountedprice,
    this.price,
    this.discount,
  });

  factory Variantvalue.variantvalueparser(Map<String, dynamic> data){
    return Variantvalue(
      count: data["count"],
      discountedamount: data["discountedamount"],
      discountedkind: data["discountedkind"],
      discountedprice: data["discountprice"],
      price: data["price"],
      discount: data["discount"]
      .map<Discount>((json)=> Discount.discountparser(json))
       .toList()

    );
  }
}