class Homepage{
  String body;
  bool cancomment;
  String createdat;
  String firstbody;
  String firstimage;
  String group;
  String html;
  String id;
  bool ispublished;
  String slug;
  String store;
  String title;

  Homepage({
    this.id,
    this.store,
    this.createdat,
    this.title,
    this.body,
    this.slug,
    this.cancomment,
    this.firstbody,
    this.firstimage,
    this.group,
    this.html,
    this.ispublished
  });
  factory Homepage.parser(Map<String, dynamic> data){
    return Homepage(
      body: data["body"],
      cancomment: data["cancomment"],
      createdat: data["createdat"],
      firstbody: data["firstbody"],
      firstimage: data["firstimage"],
      group: data["group"],
      ispublished: data["ispublished"],
      html: data["html"],
      id: data["id"],
      slug: data["slug"],
      store: data["store"],
      title: data["title"],

    );
  }
}