class Place {

  String id;
  String body;
  String createat;
  String name;
  String store;
  String type;

  Place({

    this.id,
    this.body,
    this.createat,
    this.name,
    this.store,
    this.type,
  });

  factory Place.placesparser(Map<String, dynamic> data){
     return Place(
       id: data["id"],
       body: data["body"],
       createat: data["createat"],
       name: data["name"],
       store: data["store"],
       type: data["type"],
     );
   }
}
