import 'dart:convert';
import 'dart:developer';

import 'package:twoo/Models/reefer.dart';

class State {
  List visit;
  List order;
  List sale;
  Reefer reefer;

  State({
    this.order,
    this.sale,
    this.visit,
    this.reefer,
  });
  factory State.parser(Map<String, dynamic> data) {
    log(data.toString());
    return State(
      order: data["order"],
      sale: data["sale"],
      visit: data["visit"],
      reefer: Reefer.parser(data["reefer"]),
    );
  }
}
