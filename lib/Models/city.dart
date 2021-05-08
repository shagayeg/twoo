import 'package:flutter/widgets.dart';
import 'package:twoo/Models/province.dart';

class City {
  String id;
  String name;
  int latitude;
  int longitude;
  List<Province> province;

  City({
    this.id,
    this.name,
    this.latitude,
    this.longitude,
    this.province,
  });
  factory City.parser(Map<String, dynamic> data) {
    return City(
      id: data["id"],
      name: data["name"],
      latitude: data["latitude"],
      longitude: data["longitude"],
      province: data["province"] == null
          ? []
          : data["province"]
              .map<Province>((json) => Province.parser(data))
              .toList(),
    );
  }
}
