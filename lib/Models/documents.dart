 import 'dart:convert';

import 'package:twoo/Models/filedoc.dart';
import 'package:twoo/Models/image.dart';


class Documents{

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
  List<Filedoc>filesdoc;
  List<Image>image;

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
    factory Documents.parser(Map<String, dynamic> data){
      return Documents(
        categories: data["categories"],
        crestedat: data["createat"],
        desc: data["desc"],
        id: data["id"],
        isdocument: data["isdocument"],
        islikednews: data["islikenews"],
        ismain: data["ismain"],
        name: data["name"],
        published: data["published"],
        slug: data["slug"],
        subtitle: data["subtitle"],
        filesdoc: data["filesdoc"]
        .map<Filedoc>((json)=> Filedoc.filesdocparser(json))
        .toList(),
        image: data["image"]
        .map<Image>((json)=> Image.imageparser(json))
        .toList(),
      );
      
    }
 }