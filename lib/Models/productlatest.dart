import 'dart:convert';

import 'package:twoo/Models/author.dart';
import 'package:twoo/Models/files.dart';
import 'package:twoo/Models/place.dart';
import 'package:twoo/Models/subject.dart';
import 'package:twoo/Models/user.dart';

class Productlatest {
  // String createdAtConvert;
  String createdAtMoment;
  // List<File> files;
  User user;
  // List<Author> authors;
  // List<Place> places;
  // List<Subject> subjects;
  String name;
  String defaultimage;
  String firstimage;
  int discountamount;
  int price;
  int count;
  String description;
  Productlatest({
    // this.createdAtConvert,
    this.createdAtMoment,
    // this.files,
    this.user,
    // this.authors,
    // this.places,
    // this.subjects,
    this.name,
    this.defaultimage,
    this.firstimage,
    this.discountamount,
    this.price,
    this.description,
    this.count
  });
  factory Productlatest.productlatestparser(Map<String, dynamic> data) {
    return Productlatest(
      name: data["name"],
      count: data["count"],

      // createdAtConvert: data["created_at_convert"],
      createdAtMoment: data["created_at_moment"],
      defaultimage: data["default_image"],
      user: User.userparser(data["user"]),
      firstimage: data["first_image"],
      discountamount: data["discount_amount"],
      price: data["price"],
      description: data["description"],
      // authors: data["authors"] == null
      //     ? []
      //     : data["authors"]
      //         .map<Author>((json) => Author.authorparser(json))
      //         .toList(),
      // files: data["files"] == null
      //     ? []
      //     : data["files"].map<File>((json) => File.filesparser(data)).toList(),
      // places: data["places"] == null
      //     ? []
      //     : data["places"]
      //         .map<Place>((json) => Place.placesparser(json))
      //         .toList(),
      // subjects: data["subjects"] == null
      //     ? []
      //     : data["subjects"]
      //         .map<Subject>((json) => Subject.subjectsparser(json))
      //         .toList(),
    );
  }
}
