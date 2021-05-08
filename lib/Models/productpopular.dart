
import 'dart:convert';

import 'package:twoo/Models/author.dart';
import 'package:twoo/Models/files.dart';
import 'package:twoo/Models/place.dart';
import 'package:twoo/Models/subject.dart';
import 'package:twoo/Models/user.dart';
import 'package:twoo/Models/variantvalue.dart';

class Productpopular{

   String barcode;
  int count;
  String createdAt;
  String createdAtConvert;
  String createdAtMoment;
  String defaultimage;
  int discountamount;
  int discountedprice;
  List<User>user;
  List<Variantvalue>variantvalues;
  List<Author>authors;
  List<Place>places;
  List<Subject>subjects;
  List<File>files;

  Productpopular({
    this.barcode,
      this.count,
      this.createdAt,
      this.createdAtConvert,
      this.createdAtMoment,
      this.discountedprice,
      this.defaultimage,
      this.discountamount,
      this.user,
      this.variantvalues,
      this.authors,
      this.places,
      this.subjects,
      this.files,
  });

   factory Productpopular.productpopularparser(Map<String, dynamic> data){
     return Productpopular(
       barcode: data["barcode"],
      count: data["count"],
      createdAt: data["created_at"],
      createdAtConvert: data["created_at_convert"],
      createdAtMoment: data["created_at_moment"],
      defaultimage: data["defaultimage"],
      discountamount: data["discountamount"],
      discountedprice: data["discountedprice"],
      
     user: data["user"] == null
          ? []
          : data["user"].map<User>((json) => User.userparser(json)).toList(),
          
      variantvalues: data["users"] == null
          ? []
          : data["variantvalues"]
              .map<Variantvalue>(
                  (json) => Variantvalue.variantvalueparser(json))
              .toList(),
       authors: data["authors"] == null
          ? []
          : data["authors"]
              .map<Author>((json) => Author.authorparser(json))
              .toList(),
      places: data["places"] == null
          ? []
          : data["places"]
              .map<Place>((json) => Place.placesparser(json))
              .toList(),
       subjects: data["subjects"] == null
          ? []
          : data["subjects"]
              .map<Subject>((json) => Subject.subjectsparser(json))
              .toList(),
      files: data["files"]
          .map<File>((json) => File.filesparser(json))
          .toList(),
     );
   }
}