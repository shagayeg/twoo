class Slider{
  String id;
  String title;
  bool ispuplished;
  String created;
  // List<String> imageid;
  // List<String> descs;
  // List<String> links;

  Slider({
    this.id,
    this.title,
    this.created,
    this.ispuplished,
    // this.descs,
    // this.imageid,
    // this.links,
  });

  factory Slider.parser(Map<String, dynamic> data){
    return Slider(
      created: data["Created"],
      id: data["ID"],
      ispuplished: data["IsPublished"],
      title: data["Title"],
      // descs: data["descs"] as List<String>,
      // imageid: data["imageid"] as List<String>,
      // links: data["links"] as List<String>,
    );
  }
}