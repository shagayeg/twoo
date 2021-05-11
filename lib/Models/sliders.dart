class MySlider {
  String id;
  String title;
  bool ispuplished;
  String created;
 List imageid;
  // List<String> descs;
  // List<String> links;

  MySlider({
    this.id,
    this.title,
    this.created,
    this.ispuplished,
    // this.descs,
     this.imageid,
    // this.links,
  });

  factory MySlider.parser(Map<String, dynamic> data) {
    return MySlider(
      created: data["Created"],
      id: data["ID"],
      ispuplished: data["IsPublished"],
      title: data["Title"],
      // descs: data["descs"] as List<String>,
       imageid: data["ImagesID"]
      // links: data["links"] as List<String>,
    );
  }
}
