class Filedoc{
  String big;
  String createdat;
  bool free;
  String id;
  String micro;
  String name;
  String namenoext;
  String original;
  String originalname;
  String status;
  String store;
  String thumb;
  String type;

  Filedoc({
    this.name,
    this.id,
    this.type,
    this.createdat,
    this.free,
    this.namenoext,
    this.original,
    this.originalname,
    this.status,
    this.store,
    this.big,
    this.micro,
    this.thumb,
    
  });
   factory Filedoc.filesdocparser(Map<String, dynamic> data){
     return Filedoc(
       big: data["big"],
       createdat: data["createdat"],
       free: data["free"],
       id: data["id"],
       micro: data["micro"],
       name: data["name"],
       namenoext: data["namenoext"],
       original: data["original"],
       originalname: data["originalname"],
       status: data["status"],
       store: data["store"],
       thumb: data["thumb"],
       type: data["type"],
     );
   }
}