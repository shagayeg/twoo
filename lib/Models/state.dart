import 'dart:convert';

import 'package:twoo/Models/reefer.dart';

class State{

  List visit;
  List order;
  List sale;
  List<Reefer>reefer;

  State({

    this.order,
    this.sale,
    this.visit,
    this.reefer,

  });
  factory State.parser(Map<String, dynamic> data){
    return State(
      order: data["order"],
      sale: data["sale"],
      visit: data["visit"],
      reefer: data["reefer"]
      .map<Reefer>((json)=> Reefer.parser(json))
      .toList(),
    );
  }
}