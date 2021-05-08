class Owner{
  String avatar;
  String cellphone;
  String desc;
  String fullname;
  String gender;
  String id;
  bool isadmin;
  String martial;
  String shabanumber;
  String showablename;
  bool verifiedmobile;

  Owner({

    this.id,
    this.cellphone,
    this.desc,
    this.avatar,
    this.fullname,
    this.gender,
    this.isadmin,
    this.martial,
    this.shabanumber,
    this.showablename,
    this.verifiedmobile,
    
  });
   factory Owner.parser(Map<String, dynamic> data){
     return Owner(
       avatar: data["avatar"],
       cellphone: data["cellphone"],
       desc: data["desc"],
       fullname: data["fullname"],
       gender: data["gender"],
       id: data["id"],
      isadmin: data["isadmin"],
      martial: data["martial"],
      shabanumber: data["shabanumber"],
      showablename: data["showablename"],
      verifiedmobile: data["verifiedmobile"]
     );
   }


}