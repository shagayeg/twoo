class Author {
  String name;

  Author({
    this.name,
    
    
  });
  factory Author.authorparser(Map<String, dynamic> data1) {
    return Author(
      name: data1["name"],
      
    );
  }

 
}
