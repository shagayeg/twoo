class Slider{
  String id;
  String title;
  bool ispuplished;
  String created;
  List<String> imageid;
  List<String> descs;
  List<String> links;

  Slider({
    this.id,
    this.title,
    this.created,
    this.ispuplished,
    this.descs,
    this.imageid,
    this.links,
  });

  factory Slider.parser(Map<String, dynamic> data){
    return Slider(
      created: data["created"],
      id: data["id"],
      ispuplished: data["ispuplished"],
      title: data["title"],
      descs: data["descs"] as List<String>,
      imageid: data["imageid"] as List<String>,
      links: data["links"] as List<String>,
    );
  }
}