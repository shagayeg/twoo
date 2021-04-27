class Instagramauth{
  String username;
  String password;

  Instagramauth({

    this.password,
    this.username,
  });
   factory Instagramauth.parser(Map<String, dynamic> data){
     return Instagramauth(

       password: data["password"],
       username: data["username"],
     );
   }
}