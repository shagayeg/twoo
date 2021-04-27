class Province{
  String id;
  String name;

  Province({
    this.id,
    this.name,
  });

   factory Province.parser(Map<String, dynamic> data){
     return Province(
       id: data["id"],
       name: data["name"]
     );
   }
}