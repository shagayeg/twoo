import 'package:twoo/Models/author.dart';
import 'package:twoo/Models/files.dart';
import 'package:twoo/Models/place.dart';
import 'package:twoo/Models/subject.dart';
import 'package:twoo/Models/user.dart';
import 'package:twoo/Models/variantvalue.dart';

class Specialproduct {
  String name;
  String description;
  int price;
  // int count;
  // String createdAt;
  // String createdAtConvert;
  String createdAtMoment;
  // String defaultimage;
  int discountamount;
  // int discountedprice;
  // int discountkind;
  // List<Author> authors;
  // List<Place> places;
  // List<Subject> subjects;
  User user;
  // List<Variantvalue> variantvalues;
  // List<File> files;
  String firstimage;

  Specialproduct({
    // this.count,
    // this.createdAt,
    // this.createdAtConvert,
    this.createdAtMoment,
    // this.defaultimage,
    this.discountamount,
    // this.discountedprice,
    // this.authors,
    // this.places,
    // this.subjects,
    this.user,
    // this.variantvalues,
    // this.files,
    this.name,
    this.price,
    this.firstimage,
    // this.discountkind,
    this.description
  });

  factory Specialproduct.parser(Map<String, dynamic> data) {
    return Specialproduct(
      // count: data["count"],
      // createdAt: data["created_at"],
      // createdAtConvert: data["created_at_convert"],
      createdAtMoment: data["created_at_moment"],
      // defaultimage: data["default_image"],
      discountamount: data["discount_amount"],
      // discountedprice: data["discounted_price"],
      name: data["name"],
      price: data["price"],
      description: data["description"],
      firstimage: data["first_image"],
      // discountkind: data["discount_kind"],
      // files: File.filesparser(data["file"]),
      // places: Place.parser(data["places"]),
      // subjects: Subject.parser(data["subjects"]),
      user: User.userparser(data["user"]),
      // variantvalues: Variantvalue.parser(data["variantvalues"]),
      // authors: data["authors"] == null
          // ? []
          // : data["authors"]
          //     .map<Author>((json) => Author.authorparser(json))
              // .toList(),
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
      // user: data["user"] == null
      //     ? []
      //     : data["user"].map<User>((json) => User.userparser(json)).toList(),
      // variantvalues: data["users"] == null
      //     ? []
      //     : data["variantvalues"]
      //         .map<Variantvalue>(
      //             (json) => Variantvalue.variantvalueparser(json))
      //         .toList(),
      // files: data["files"] == null
      //     ? []
      //     : data["files"].map<File>((json) => File.filesparser(json)).toList(),
    );
  }
}
