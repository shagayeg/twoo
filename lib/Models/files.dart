class File {
  String id;
  String discription;
  bool downlod;
  bool free;
  bool isavailable;
  String name;
  String namenoext;
  String original;
  String originalname;
  bool playlist;
  String status;
  String story;
  String titel;
  String type;
  String url;

  File({
    this.id,
    this.discription,
    this.downlod,
    this.free,
    this.isavailable,
    this.name,
    this.namenoext,
    this.original,
    this.originalname,
    this.playlist,
    this.status,
    this.story,
    this.titel,
    this.type,
    this.url,
  });
  factory File.filesparser(Map<String, dynamic> data) {
    return File(
      id: data["id"],
      discription: data["discription"],
      downlod: data["downlod"],
      free: data["free"],
      isavailable: data["is_available"],
      name: data["name"],
      namenoext: data["namenoext"],
      original: data["original"],
      originalname: data["original_name"],
      playlist: data["playlist"],
      status: data["status"],
      story: data["story"],
      titel: data["title"],
      type: data["type"],
      url: data["url"],
    );
  }
}
