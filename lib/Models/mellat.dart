class Mellat{
  String terminalid;
  String username;
  String password;
  String description;

  Mellat({

    this.description,
    this.username,
    this.password,
    this.terminalid,
    
  });
   factory Mellat.parser(Map<String, dynamic> data){

     return Mellat(
       description: data["description"],
       password: data["password"],
       terminalid: data["terminalid"],
       username: data["username"]
     );
   }
}