import 'package:flutter/widgets.dart';

class Image {

  String id;
  String owner;
  String poth;
  String checksum;
  bool free;
  String createdat;
  String name;
  String status;
  String store;
  String type;
  String title;
  String url;

  Image({
    this.store,
    this.status,
    this.free,
    this.createdat,
    this.type,
    this.id,
    this.name,
    this.url,
    this.checksum,
    this.owner,
    this.poth,
    this.title,

  });
   factory Image.imageparser(Map<String, dynamic> data){
     return Image(
       checksum: data["checksum"],
       createdat: data["createdat"],
       free: data["free"],
       id: data["id"],
       name: data["name"],
       owner: data["owner"],
       poth: data["poth"],
       status: data["status"],
       store: data["store"],
       title: data["title"],
       type: data["type"],
       url: data["url"],
     );
   }
}
