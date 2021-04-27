
class Subject {

  String id;
  String body;
  String createat;
  String name;
  String store;
  String type;

  Subject({

    this.id,
    this.body,
    this.createat,
    this.name,
    this.store,
    this.type,
  });

   factory Subject.subjectsparser(Map<String, dynamic> data){
     return Subject(
       id: data["id"],
       body: data["body"],
       createat: data["createat"],
       name: data["name"],
       store: data["store"],
       type: data["type"],
     );
   }
}