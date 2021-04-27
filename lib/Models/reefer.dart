class Reefer{

  int wasa;
  int instagram;
  int divar;
  int telegram;
  int google;
  int other;

  Reefer({
    this.instagram,
    this.divar,
    this.google,
    this.other,
    this.telegram,
    this.wasa,
  });
   factory Reefer.parser(Map<String, dynamic> data){

     return Reefer(
       divar: data["divar"],
       google: data["google"],
       instagram: data["instagram"],
       other: data["other"],
       telegram: data["talegram"],
       wasa: data["wasa"],
     );
   }
}