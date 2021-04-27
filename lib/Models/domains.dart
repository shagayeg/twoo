 import 'package:twoo/Models/delivery.dart';

class Domains{
   bool candelete;
   bool isactive;
   bool isdefault;
   String name;

   Domains({

     this.name,
     this.candelete,
     this.isactive,
     this.isdefault,
   });
   factory Domains.parser(Map<String, dynamic> data){
     return Domains(
       candelete: data["candelete"],
       isactive: data["isactive"],
       isdefault: data["isdefault"],
       name: data["name"]
     );
   }
 }