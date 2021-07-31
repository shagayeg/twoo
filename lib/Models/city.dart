class City {
  String id;
  String name;
  int latitude;
  int longitude;
  

  City({
    this.id,
    this.name,
    this.latitude,
    this.longitude,
    
  });
  factory City.parser(Map<String, dynamic> data) {
    return City(
      id: data["id"],
      name: data["name"],
      latitude: data["latitude"],
      longitude: data["longitude"],
      
    );
  }
}
