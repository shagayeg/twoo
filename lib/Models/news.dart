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
  List<Image> image;
  List<Filedoc> filesdoc;

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
    this.filesdoc,
  });

  factory News.parser(Map<String, dynamic> data) {
    return News(
      createdat: data["createdat"],
      desc: data["desc"],
      id: data["id"],
      isdocument: data["isdocument"],
      islikednews: data["islikenews"],
      ismain: data["ismain"],
      name: data["name"],
      published: data["published"],
      slug: data["slug"],
      subtitle: data["subtitle"],
      image :data["image"] == null
          ? []
          : data["image"]
              .map<Image>((json) => Image.imageparser(json))
              .toList(),
      filesdoc: data["filesdoc"] == null
          ? []
          : data["filesdoc"]
              .map<Filedoc>((json) => Filedoc.filesdocparser(json))
              .toList(),
    );
  }
}
