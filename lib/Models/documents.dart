import 'dart:convert';
import 'dart:developer';

import 'package:twoo/Models/filedoc.dart';
import 'package:twoo/Models/image.dart';




class Documents {
  String crestedat;
  String desc;
  List categories;
  String id;
  String subtitle;
  bool isdocument;
  bool islikednews;
  bool ismain;
  String name;
  bool published;
  String slug;
  List<Filedoc> filesdoc;
  Image image; 
  
   

  
  

  Documents({
    this.crestedat,
    this.desc,
    this.categories,
    this.id,
    this.subtitle,
    this.ismain,
    this.name,
    this.isdocument,
    this.islikednews,
    this.published,
    this.slug,
    this.filesdoc,
    this.image,
    
  });
  factory Documents.parser(Map<String, dynamic> data) {
    log(data["image"].toString());
    return Documents(
      categories: data["categories"],
      crestedat: data["created_at"],
      desc: data["desc"],
      id: data["id"],
      isdocument: data["is_document"],
      islikednews: data["is_liked_news"],
      ismain: data["is_main"],
      name: data["name"],
      published: data["published"],
      slug: data["slug"],
      subtitle: data["sub_title"],
      filesdoc: data["files"] == null
          ? []
          : data["files"]
              .map<Filedoc>((json) => Filedoc.filesdocparser(json))
              .toList(),
         image:Image.imageparser(data["image"]),
          
    );
  }
}
