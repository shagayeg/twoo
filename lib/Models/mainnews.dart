import 'package:twoo/Models/image.dart';

class Mainnews {
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

  Mainnews({
    this.name,
    this.id,
    this.createdat,
    this.slug,
    this.published,
    this.islikednews,
    this.isdocument,
    this.ismain,
    this.subtitle,
    this.desc,
    this.image,
  });

  factory Mainnews.parser(Map<String, dynamic> data) {
    return Mainnews(
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
      image: Image.imageparser(data["image"]),
      // image:Image.parser(data["image"]),
      // image: data["image"] == null
      //     ? []
      //     : data["image"]
      //         .map<Image>((json) => Image.imageparser(json))
      //         .toList(),
    );
  }
}
