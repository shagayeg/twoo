import 'dart:convert';

import 'package:twoo/Models/author.dart';
import 'package:twoo/Models/place.dart';
import 'package:twoo/Models/subject.dart';
import 'package:twoo/Models/user.dart';

class Productlatest {
  String barcode;
  int count;
  String createdAt;
  String createdAtConvert;
  String createdAtMoment;
  // List<File> files;
  User user;
  List<Author> authors;
  List<Place> places;
  List<Subject> subjects;
  String name;
  String defaultimage;
  String firstimage; 
  Productlatest({
    this.count,
    this.barcode,
    this.createdAt,
    this.createdAtConvert,
    this.createdAtMoment,
    // this.files,
    this.user,
    this.authors,
    this.places,
    this.subjects,
    this.name,
    this.defaultimage,
    this.firstimage,
  });
  factory Productlatest.productlatestparser(Map<String, dynamic> data) {
    return Productlatest(
      barcode: data["barcode"],
      name: data["name"],
      count: data["count"],
      createdAt: data["created_at"],
      createdAtConvert: data["created_at_convert"],
      createdAtMoment: data["created_at_moment"],
      defaultimage: data["default_image"],
      user: User.userparser(data["user"]),
      firstimage: data["first_image"],
      // authors: data["authors"] == null
      //     ? []
      //     : data["authors"]
      //         .map<Author>((json) => Author.authorparser(json))
      //         .toList(),
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
