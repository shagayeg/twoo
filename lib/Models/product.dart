import 'dart:convert';

import 'package:twoo/Models/author.dart';
import 'package:twoo/Models/files.dart';
import 'package:twoo/Models/place.dart';
import 'package:twoo/Models/subject.dart';
import 'package:twoo/Models/user.dart';
import 'package:twoo/Models/variantvalue.dart';

class Product {
  String barcode;
  int count;
  String createdAt;
  String createdAtConvert;
  String createdAtMoment;
  List<Author> authors;
  List<File> files;
  List<User> user;
  List<Subject> subjects;
  List<Place> places;
  List<Variantvalue> variantvalues;

  Product(
      {this.barcode,
      this.count,
      this.createdAt,
      this.createdAtConvert,
      this.createdAtMoment,
      this.authors,
      this.files,
      this.user,
      this.subjects,
      this.places,
      this.variantvalues});

  factory Product.parser(Map<String, dynamic> productList) {
    return Product(
      barcode: productList["barcode"],
      count: productList["count"],
      createdAt: productList["created_at"],
      createdAtConvert: productList["created_at_convert"],
      createdAtMoment: productList["created_at_moment"],
      authors: productList["authors"] == null
          ? []
          : productList["authors"]
              .map<Author>((json) => Author.authorparser(json))
              .toList(),
      files: productList["files"] == null
          ? []
          : productList["files"]
              .map<File>((json) => File.filesparser(json))
              .toList(),
      user: productList["users"] == null
          ? []
          : productList["users"]
              .map<User>((json) => User.userparser(json))
              .toList(),
      subjects: productList["subjects"] == null
          ? []
          : productList["subjects"]
              .map<Subject>((json) => Subject.subjectsparser(json))
              .toList(),
      places: productList["places"] == null
          ? []
          : productList["places"]
              .map<Place>((json) => Place.placesparser(json))
              .toList(),
      variantvalues: productList["users"] == null
          ? []
          : productList["variantvalues"]
              .map<Variantvalue>(
                  (json) => Variantvalue.variantvalueparser(json))
              .toList(),
    );
  }
}
