import 'package:twoo/Models/delivery.dart';
import 'package:twoo/Models/domains.dart';
import 'package:twoo/Models/homepage.dart';
import 'package:twoo/Models/instagramauth.dart';
import 'package:twoo/Models/irankish.dart';
import 'package:twoo/Models/mellat.dart';
import 'package:twoo/Models/owner.dart';
import 'package:twoo/Models/payment.dart';
import 'package:twoo/Models/paymentfacility.dart';
import 'package:twoo/Models/socials.dart';
import 'package:twoo/Models/state.dart';

class Store {
  String acceptablecustomerregisterinfo;
  String address;
  String cellphone;
  String closetime;
  String copyright;
  String createdat;
  String crisp;
  String currency;
  String currenttheme;
  bool customizesmsfooter;
  String description;
  bool displaybabcopyright;
  String email;
  int enamadmetaid;
  List<String> metakeyword;
  List<Delivery> delivery;
  List<Domains> domains;
  List<Homepage> homepage;
  List<Instagramauth> instagramauth;
  List<Irankish> irankish;
  List<Mellat> mellat;
  List<Owner>owner;
  List<Payment>payment;
  List<Paymentfacility>paymentfacility;
  List<Socials>socials;
  List<State>state;
  


  Store({
    this.createdat,
    this.email,
    this.acceptablecustomerregisterinfo,
    this.address,
    this.cellphone,
    this.closetime,
    this.copyright,
    this.crisp,
    this.currency,
    this.currenttheme,
    this.customizesmsfooter,
    this.description,
    this.displaybabcopyright,
    this.enamadmetaid,
    this.delivery,
    this.domains,
    this.homepage,
    this.instagramauth,
    this.irankish,
    this.mellat,
    this.metakeyword,
    this.owner,
    this.payment,
    this.paymentfacility,
    this.socials,
    this.state,

  });

  factory Store.parser(Map<String, dynamic> data) {
    return Store(
        acceptablecustomerregisterinfo: data["acceptablecustomerregisterinfo"],
        address: data["address"],
        cellphone: data["cellphone"],
        closetime: data["closetime"],
        copyright: data["copyright"],
        createdat: data["createdat"],
        crisp: data["crisp"],
        currency: data["currency"],
        currenttheme: data["currenttheme"],
        customizesmsfooter: data["customizesmsfooter"],
        description: data["description"],
        displaybabcopyright: data["displaybabcopyright"],
        email: data["email"],
        enamadmetaid: data["enamadmetaid"],
        metakeyword: data["metakeyword"],
        delivery: data["delivery"]
            .map<Delivery>((json) => Delivery.parser(json))
            .toList(),
        domains: data["domains"]
            .map<Domains>((json) => Domains.parser(json))
            .toList(),
        homepage: data["homepage"]
            .map<Homepage>((json) => Homepage.parser(json))
            .toList(),
        instagramauth: data["instagramauth"] 
             .map<Instagramauth>((json) => Instagramauth.parser(json))
            .toList(),
        irankish: data["irankish"] 
         .map<Irankish>((json) => Irankish.parser(json))
            .toList(),
        mellat: data["mellat"]
         .map<Mellat>((json) => Mellat.parser(json))
            .toList(),
        owner: data["owner"]
          .map<Owner>((json) => Owner.parser(json))
            .toList(), 
        payment: data["payment"]  
           .map<Payment>((json) => Payment.parser(json))
            .toList(),  
        paymentfacility: data["paymentfacility"] 
            .map<Paymentfacility>((json) => Paymentfacility.parser(json))
            .toList(), 
         socials: data["socials"]
         .map<Socials>((json) => Socials.parser(json))
            .toList(),
            state: data["state"]
            .map<State>((json) => State.parser(json))
            .toList(),           
            );
            
  }
}
