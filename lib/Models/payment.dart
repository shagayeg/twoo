class Payment{
  bool onlinepaymentisactive;
  bool cardTransfer;
  String cardnumber;
  bool coordinatadisactive;
  bool payinperson;
  bool ravanpardakht;

  Payment({

    this.cardTransfer,
    this.cardnumber, 
    this.coordinatadisactive,
    this.onlinepaymentisactive,
    this.payinperson,
    this.ravanpardakht,
  });
  factory Payment.parser(Map<String, dynamic> data){
    return Payment(
      cardTransfer: data["cardTransfer"],
      cardnumber: data["cardnumber"],
      coordinatadisactive: data["coordinatadisactive"],
      onlinepaymentisactive: data["onlinepaymentisactive"],
      payinperson: data["payinperson"],
      ravanpardakht: data["ravanpardakht"],

    );
  }

}