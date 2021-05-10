import 'package:twoo/Models/filedoc.dart';
import 'package:twoo/Models/image.dart';

class News {
  String createdat;
  String id;
  bool isdocument;
  bool islikednews;
  bool ismain;
  String name;
  bool published;
  String slug;
  String subtitle;
  String desc;
  Image image;
 

  News({
    this.desc,
    this.subtitle,
    this.ismain,
    this.isdocument,
    this.islikednews,
    this.published,
    this.slug,
    this.createdat,
    this.id,
    this.name,
    this.image,
  
  });

  factory News.parser(Map<String, dynamic> data) {
    return News(
      createdat: data["created_at"],
      desc: data["desc"],
      id: data["id"],
      isdocument: data["is_document"],
      islikednews: data["is_liked_news"],
      ismain: data["is_main"],
      name: data["name"],
      published: data["published"],
      slug: data["slug"],
      subtitle: data["sub_title"],
      image: Image.imageparser(data["image"]),
      // filesdoc: data["filesdoc"] == null
      //     ? []
      //     : data["filesdoc"]
      //         .map<Filedoc>((json) => Filedoc.filesdocparser(json))
      //         .toList(),
    );
  }
}
