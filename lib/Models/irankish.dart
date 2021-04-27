class Irankish{
  String merchantid;
  String description;

  Irankish({

    this.description,
    this.merchantid,
  });
   factory Irankish.parser(Map<String, dynamic> data){
     return Irankish(
       description: data["description"],
       merchantid: data["merchantid"],

     );
   }
}