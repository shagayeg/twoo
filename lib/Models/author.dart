class Author {
  String name;
  String createat;
  String story;

  Author({
    this.name,
    this.createat,
    this.story,
  });
  factory Author.authorparser(Map<String, dynamic> data) {
    return Author(
      name: data["name"],
      createat: data["createat"],
      story: data["story"],
    );
  }
}
