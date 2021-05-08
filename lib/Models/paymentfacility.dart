import 'dart:developer';

class Paymentfacility{
  String terminalid;
  String apikey;
  String merchantnumber;
  String internetterminalpassword;

  Paymentfacility({
    this.terminalid,
    this.apikey,
    this.internetterminalpassword,
    this.merchantnumber,
    
  });
  factory Paymentfacility.parser(Map<String, dynamic> data){
    log(data.toString());
    return Paymentfacility(
      apikey: data["apikey"],
      internetterminalpassword: data["internetterminalpassword"],
      merchantnumber: data["merchantnumber"],
      terminalid: data["terminalid"],

    );
  }
}