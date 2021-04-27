class Discount{
  int  amount;
  int kind;

  Discount({

    this.amount,
    this.kind,
  });
  factory Discount.discountparser(Map<String, dynamic> data){

    return Discount(
      amount: data["amount"],
      kind: data["kind"]
    );
  }
}