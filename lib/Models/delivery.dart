class Delivery{
  bool courier;
  int couriercost;
  bool inperson;
  bool post;
  int defaultpostcost;
  bool freeshiping;
  int freeforprice;
  String areasupport;
  int priceforareaselected;

  Delivery({

    this.areasupport,
    this.courier,
    this.couriercost,
    this.defaultpostcost,
    this.freeforprice,
    this.freeshiping,
    this.inperson,
    this.post,
    this.priceforareaselected,
    
  });

   factory Delivery.parser(Map<String, dynamic> data){
     return Delivery(
       areasupport: data["areasupport"],
       courier: data["courier"],
       couriercost: data["couriercost"],
       defaultpostcost: data["defaultpostcost"],
       freeforprice: data["freeforprice"],
       freeshiping: data["freeshiping"],
       inperson:data["inperson"],
       post: data["post"],

     );
   }
}