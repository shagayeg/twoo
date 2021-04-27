import 'package:twoo/Models/city.dart';

class District{
  String id;
  String name;
  List<City> city;

  District({
    this.name,
    this.id,
    this.city,
  });
   factory District.parser(Map<String, dynamic> data){
     return District(
       id: data["id"],
       name: data["name"],
       city: data["city"]
       .map<City>((json)=> City.parser(json))
       .toList(),

     );
   }
}