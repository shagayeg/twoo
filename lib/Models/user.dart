class User {
  String id;
  String call;
  String email;
  String createdat;
  String fullname;
  bool verified;
  String birthday;
  // List<Keywrd>keywrds;

  User({
    this.id,
    this.call,
    this.createdat,
    this.email,
    this.fullname,
    this.verified,
    this.birthday,
  });

  factory User.userparser(Map<String, dynamic> data) {
    return User(
      id: data["id"],
      call: data["call"],
      createdat: data["createdat"],
      email: data["email"],
      fullname: data["fullname"],
      verified: data["verified"],
      birthday: data["birthday"]
    );
  }

  static parser(data) {}
}
