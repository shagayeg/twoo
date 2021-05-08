import 'dart:convert';
import 'dart:html';

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
  List<File> files;
  List<User> user;
  List<Author> authors;
  List<Place> places;
  List<Subject> subjects;

  Productlatest({
    this.count,
    this.barcode,
    this.createdAt,
    this.createdAtConvert,
    this.createdAtMoment,
    this.files,
    this.user,
    this.authors,
    this.places,
    this.subjects,
  });
  factory Productlatest.parser(Map<String, dynamic> data) {
    return Productlatest(
      barcode: data["barcode"],
      count: data["count"],
      createdAt: data["created_at"],
      createdAtConvert: data["created_at_convert"],
      createdAtMoment: data["created_at_moment"],
      
      files: data["files"],
            
      user: data["user"] == null
          ? []
          : data["user"].map<User>((json) => User.userparser(json)).toList(),
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
    );
  }
}
