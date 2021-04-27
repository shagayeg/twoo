class Author {
  String id;
  String body;
  String name;
  String createat;
  String story;
  String type;

  Author({
    this.name,
    this.createat,
    this.story,
    this.id,
    this.body,
    this.type,
    
  });
  factory Author.authorparser(Map<String, dynamic> data) {
    return Author(
      name: data["name"],
      createat: data["createat"],
      story: data["story"],
      id: data["id"],
      body: data["body"],
      type: data["type"],
    );
  }
}
