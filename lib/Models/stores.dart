import 'dart:developer';

import 'package:twoo/Models/store.dart';

class Stores {
  String domain;
  int prouctcount;
  Store store;

  Stores({
    this.store,
    this.domain,
    this.prouctcount,
  });
  factory Stores.parser(Map<String, dynamic> data2) {
    // log(data2["store"]["name"].toString());
    return Stores(
      domain: data2["domain"],
      prouctcount: data2["prouctcount"],
      store:Store.parser(data2["store"]),
    );
  }
}
