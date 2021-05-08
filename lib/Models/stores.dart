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
   factory Stores.parser(Map<String, dynamic> data2){
     return Stores(
       domain: data2["domain"],
       prouctcount: data2["prouctcount"],
      store : data2["store"] == null
          ? []
       : data2["store"]
         .map<Store>((json)=> Store.parser(json))
         .toList(),
       
     );
   }

  
}