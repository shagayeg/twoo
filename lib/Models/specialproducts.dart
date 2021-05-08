import 'package:twoo/Models/author.dart';
import 'package:twoo/Models/files.dart';
import 'package:twoo/Models/place.dart';
import 'package:twoo/Models/subject.dart';
import 'package:twoo/Models/user.dart';
import 'package:twoo/Models/variantvalue.dart';

class Specialproduct {
  String barcode;
  int count;
  String createdAt;
  String createdAtConvert;
  String createdAtMoment;
  String defaultimage;
  int discountamount;
  int discountedprice;
  List<Author> authors;
  List<Place> places;
  List<Subject> subjects;
  List<User> user;
  List<Variantvalue> variantvalues;
  List<File> files;

  Specialproduct({
    this.barcode,
    this.count,
    this.createdAt,
    this.createdAtConvert,
    this.createdAtMoment,
    this.defaultimage,
    this.discountamount,
    this.discountedprice,
    this.authors,
    this.places,
    this.subjects,
    this.user,
    this.variantvalues,
    this.files,
  });

  factory Specialproduct.parser(Map<String, dynamic> data) {
    return Specialproduct(
      barcode: data["barcode"],
      count: data["count"],
      createdAt: data["created_at"],
      createdAtConvert: data["created_at_convert"],
      createdAtMoment: data["created_at_moment"],
      defaultimage: data["defaultimage"],
      discountamount: data["discountamount"],
      discountedprice: data["discountedprice"],
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
      user: data["user"] == null
          ? []
          : data["user"].map<User>((json) => User.userparser(json)).toList(),
      variantvalues: data["users"] == null
          ? []
          : data["variantvalues"]
              .map<Variantvalue>(
                  (json) => Variantvalue.variantvalueparser(json))
              .toList(),
      files: data["files"] == null
          ? []
          : data["files"].map<File>((json) => File.filesparser(json)).toList(),
    );
  }
}
