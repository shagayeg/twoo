class Author {
  // String id;
  // String body;
  String name;
  // String createat;
  // String story;
  // String type;

  Author({
    this.name,
    // this.createat,
    // this.story,
    // this.id,
    // this.body,
    // this.type,
    
  });
  factory Author.authorparser(Map<String, dynamic> data1) {
    return Author(
      name: data1["name"],
      // createat: data1["create_at"],
      // story: data1["store"],
      // id: data1["id"],
      // body: data1["body"],
      // type: data1["type"],
    );
  }

 
}
