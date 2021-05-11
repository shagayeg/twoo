import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:twoo/Models/author.dart';
import 'package:twoo/Models/categoriesWithProducts.dart';

import 'package:twoo/Models/product.dart';

class Namecate extends StatefulWidget {
  final CategoriesWithProducts category;
  final Product pro;
  final Author auth;
  const Namecate({Key key, this.category, this.pro, this.auth}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return new _Namecate(category, pro,auth);
  }
}

class _Namecate extends State<Namecate> {
  final CategoriesWithProducts category;
  final Product pro;
  final Author auth;
// List<CategoriesWithProducts> data = new List();
  // List<Product> productlist = new List();
  // List<Author> data1 = new List();

  _Namecate(
    this.category,
    this.pro, this.auth,
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: MediaQuery.of(context).size.height * 0.99,
                width: MediaQuery.of(context).size.width * 0.99,
                margin: EdgeInsets.symmetric(horizontal: 2),
                //  color: Colors.purple,
                child: ListView.builder(
                  itemCount: 1,
                  // scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.10,
                          width: MediaQuery.of(context).size.width * 0.99,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xfff7c6bc)),
                          child: Stack(
                            children: [
                              Positioned(
                                  top: 20,
                                  left: 340,
                                  child: Icon(
                                    Icons.pending_actions_rounded,
                                    size: 33,
                                    color: Colors.grey[800],
                                  )),
                              Positioned(
                                  top: 20,
                                  left: 190,
                                  child: Text(
                                    "دوره های آموزشی",
                                    style: TextStyle(
                                        color: Colors.grey[800],
                                        fontWeight: FontWeight.w800,
                                        fontSize: 20),
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.08,
                          width: MediaQuery.of(context).size.width * 0.99,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[300],
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                  top: 15,
                                  left: 260,
                                  child: Text(
                                    category.name,
                                    style: TextStyle(
                                        color: Colors.grey[800],
                                        fontWeight: FontWeight.w800,
                                        fontSize: 18),
                                  ))
                            ],
                          ),
                        ),
                       
                      ],
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}
