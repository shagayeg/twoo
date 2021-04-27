import 'package:twoo/Models/store.dart';
import 'package:twoo/Models/subject.dart';

class Stores{
  String domain;
  int prouctcount;
  List<Store>store;

  Stores({
    this.store,
    this.domain,
    this.prouctcount,

  });
   factory Stores.storesparser(Map<String, dynamic> data){
     return Stores(
       domain: data["domain"],
       prouctcount: data["prouctcount"],
       store: data["store"]
         .map<Store>((json)=> Store.parser(json))
       .toList(
     ));
   }
}