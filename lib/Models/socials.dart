class Socials{
  String aparat;
  String facebook;
  String telegramchannel;
  String telegramsupport;
  String googleplus;
  String instagram;
  String twitter;
  String youtube;
  bool sendtosocialmedias;

  Socials({
    this.aparat,
    this.facebook,
    this.googleplus,
    this.instagram,
    this.sendtosocialmedias,
    this.telegramchannel,
    this.telegramsupport,
    this.twitter,
    this.youtube,
    
  });
  factory Socials.parser(Map<String, dynamic> data){
    return Socials(
      aparat: data["aparat"],
      facebook: data["facebook"],
      googleplus: data["googleplus"],
      instagram: data["instagram"],
      sendtosocialmedias: data["sendtosocialmedias"],
      telegramchannel: data["telegramchannel"],
      telegramsupport: data["telegramsupport"],
      twitter: data["twitter"],
      youtube: data["youtube"],

    );
  }

}