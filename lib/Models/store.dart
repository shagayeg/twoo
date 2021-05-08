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
  List<Owner> owner;
  List<Payment> payment;
  List<Paymentfacility> paymentfacility;
  List<Socials> socials;
  List<State> state;

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

  factory Store.parser(Map<String, dynamic> data3) {
    return Store(
      acceptablecustomerregisterinfo: data3["acceptablecustomerregisterinfo"],
      address: data3["address"],
      cellphone: data3["cellphone"],
      closetime: data3["closetime"],
      copyright: data3["copyright"],
      createdat: data3["createdat"],
      crisp: data3["crisp"],
      currency: data3["currency"],
      currenttheme: data3["currenttheme"],
      customizesmsfooter: data3["customizesmsfooter"],
      description: data3["description"],
      displaybabcopyright: data3["displaybabcopyright"],
      email: data3["email"],
      enamadmetaid: data3["enamadmetaid"],
      metakeyword: data3["metakeyword"],
      delivery: data3["delivery"] == null
          ? []
          : data3["delivery"]
              .map<Delivery>((json) => Delivery.parser(json))
              .toList(),
      domains: data3["domains"] == null
          ? []
          : data3["domains"]
              .map<Domains>((json) => Domains.parser(json))
              .toList(),
      homepage: data3["homepage"] == null
          ? []
          : data3["homepage"]
              .map<Homepage>((json) => Homepage.parser(json))
              .toList(),
      instagramauth: data3["instagramauth"] == null
          ? []
          : data3["instagramauth"]
              .map<Instagramauth>((json) => Instagramauth.parser(json))
              .toList(),
      irankish: data3["irankish"] == null
          ? []
          : data3["irankish"]
              .map<Irankish>((json) => Irankish.parser(json))
              .toList(),
      mellat: data3["mellat"] == null
          ? []
          : data3["mellat"].map<Mellat>((json) => Mellat.parser(json)).toList(),
      owner: data3["owner"] == null
          ? []
          : data3["owner"].map<Owner>((json) => Owner.parser(json)).toList(),
      payment: data3["payment"] == null
          ? []
          : data3["payment"]
              .map<Payment>((json) => Payment.parser(json))
              .toList(),
      paymentfacility: data3["paymentfacility"] == null
          ? []
          : data3["paymentfacility"]
              .map<Paymentfacility>((json) => Paymentfacility.parser(json))
              .toList(),
      socials: data3["socials"] == null
          ? []
          : data3["socials"]
              .map<Socials>((json) => Socials.parser(json))
              .toList(),
      state: data3["state"] == null
          ? []
          : data3["state"].map<State>((json) => State.parser(json)).toList(),
    );
  }
}
