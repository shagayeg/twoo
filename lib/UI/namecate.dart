import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:twoo/Models/categoriesWithProducts.dart';
import 'package:twoo/Models/product.dart';
import 'package:twoo/UI/desproduct.dart';

class Namecate extends StatefulWidget {
  final CategoriesWithProducts category;
  final Product pro;

  const Namecate({
    Key key,
    this.category,
    this.pro,
  }) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return new _Namecate(
      category,
      pro,
    );
  }
}

class _Namecate extends State<Namecate> {
  final CategoriesWithProducts category;
  final Product pro;

  _Namecate(
    this.category,
    this.pro,
  );

  @override
  Widget build(BuildContext context) {
    return category.products.isEmpty
        ? Scaffold(
            body: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text("محصولی وجود ندارد"),
              ),
            ),
          )
        : Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              actions: [
                Text(
                  category.name,
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
                Padding(padding: EdgeInsets.all(20)),
              ],
            ),
            body: Container(
              height: MediaQuery.of(context).size.height * 0.90,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 2,vertical: 20),
              //  color: Colors.purple,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: category.products.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {});
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new Desproduct(
                                      product: category.products[index],
                                    )));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color(0xfff7c6bc)),
                        height: MediaQuery.of(context).size.height * 0.48,
                        width: MediaQuery.of(context).size.width * 0.99,
                        margin: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.25,
                              width: MediaQuery.of(context).size.width * 0.99,
                              // color: Colors.red,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(16.0),
                                    topRight: Radius.circular(16.0)),
                                child: Image.network(
                                  "http://goftavard.ir" +
                                      category.products[index].firstimage,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 5),
                              margin: EdgeInsets.symmetric(horizontal: 18),
                              height: MediaQuery.of(context).size.height * 0.09,
                              width: MediaQuery.of(context).size.width * 0.8,
                              //  color: Colors.red,
                              child: Text(
                                category.products[index].name,
                                textAlign: TextAlign.right,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 15),
                              ),
                            ),
                            // SizedBox(height: 10,),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 18),
                              // padding: EdgeInsets.only(left: 10, right: 15),
                              height: MediaQuery.of(context).size.height * 0.07,
                              width: MediaQuery.of(context).size.width * 0.99,
                              // color: Colors.red,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(category.products[index].price
                                      .toString()),
                                
                                  Text(
                                    "تومان",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                    SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.45,
                                  ),
                                   
                                  Text(category.products[index].user.fullname),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.04,
                                  ),
                                  Icon(Icons.perm_media_outlined),
                                ],
                              ),
                            ),
                            Container(
                              height: 1,
                              width: MediaQuery.of(context).size.width * 0.99,
                              color: Colors.grey[600],
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 18),
                              // padding: EdgeInsets.only(left: 10, right: 15),
                              height: MediaQuery.of(context).size.height * 0.05,
                              width: MediaQuery.of(context).size.width * 0.99,
                              // color: Colors.pink,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(category.products[index].user.call),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.50,
                                  ),
                                  Icon(Icons.people_rounded),
                                ],
                              ),
                            )
                            // child: Column(
                            //   children: [
                            //     Row(
                            //       mainAxisAlignment:
                            //           MainAxisAlignment.spaceBetween,
                            //       children: [
                            //         Text(category.products[index].price
                            //             .toString()),
                            //         Text(
                            //           "تومان",
                            //           style: TextStyle(
                            //               fontWeight: FontWeight.w700),
                            //         ),
                            //         SizedBox(
                            //           width: MediaQuery.of(context).size.width *
                            //               0.35,
                            //         ),
                            //         Text(
                            //             category.products[index].user.fullname),
                            //         SizedBox(
                            //           width: 10,
                            //         ),
                            //         Icon(Icons.perm_media_outlined),
                            //       ],
                            //     ),
                            //     SizedBox(
                            //       height: 15,
                            //     ),
                            //     Container(
                            //       height: 1,
                            //       width:
                            //           MediaQuery.of(context).size.width * 0.99,
                            //       color: Colors.grey[600],
                            //     ),
                            //     SizedBox(
                            //       height: 20,
                            //     ),
                            //     Row(
                            //       mainAxisAlignment:
                            //           MainAxisAlignment.spaceAround,
                            //       children: [
                            //         Text(category.products[index].user.call),
                            //         SizedBox(
                            //           width: 230,
                            //         ),
                            //         Icon(Icons.people_rounded),
                            //       ],
                            //     )
                            //   ],
                            // ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          );
    // body: SingleChildScrollView(
    //   child: Container(
    //     height: MediaQuery.of(context).size.height * 0.99,
    //     width: MediaQuery.of(context).size.width,
    //     margin: EdgeInsets.symmetric(horizontal: 2),
    //     //  color: Colors.purple,
    //     child: ListView.builder(
    //         itemCount: category.products.length,
    //         itemBuilder: (context, index) {
    //           return Container(
    //             decoration: BoxDecoration(
    //                 borderRadius: BorderRadius.circular(16),
    //                 color: Color(0xfff7c6bc)),
    //             height: MediaQuery.of(context).size.height * 0.48,
    //             width: MediaQuery.of(context).size.width * 0.99,
    //             margin: EdgeInsets.all(10),
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.end,
    //               children: [
    //                 Container(
    //                   height: MediaQuery.of(context).size.height * 0.25,
    //                   width: MediaQuery.of(context).size.width * 0.99,
    //                   // color: Colors.red,
    //                   child: ClipRRect(
    //                     borderRadius: BorderRadius.only(
    //                         topLeft: Radius.circular(16.0),
    //                         topRight: Radius.circular(16.0)),
    //                     child: Image.network(
    //                       "http://goftavard.ir" +
    //                           category.products[index].firstimage,
    //                       fit: BoxFit.fill,
    //                     ),
    //                   ),
    //                 ),
    //                 Container(
    //                   padding: EdgeInsets.all(18),
    //                   width: MediaQuery.of(context).size.width * 0.8,
    //                   child: Text(
    //                     category.products[index].name,
    //                     textAlign: TextAlign.right,
    //                     style: TextStyle(
    //                       fontWeight: FontWeight.w500,
    //                     ),
    //                   ),
    //                 ),
    //                 Container(
    //                   margin: EdgeInsets.symmetric(horizontal: 18),
    //                   // padding: EdgeInsets.only(left: 10, right: 15),
    //                   // height: MediaQuery.of(context).size.height * 0.20,
    //                   width: MediaQuery.of(context).size.width * 0.99,
    //                   // color: Colors.red,

    //                   child: Column(
    //                     children: [
    //                       Row(
    //                         mainAxisAlignment:
    //                             MainAxisAlignment.spaceBetween,
    //                         children: [
    //                           Text(category.products[index].price
    //                               .toString()),
    //                           Text(
    //                             "تومان",
    //                             style:
    //                                 TextStyle(fontWeight: FontWeight.w700),
    //                           ),
    //                           SizedBox(
    //                             width: MediaQuery.of(context).size.width *
    //                                 0.35,
    //                           ),
    //                           Text(category.products[index].user.fullname),
    //                           SizedBox(
    //                             width: 10,
    //                           ),
    //                           Icon(Icons.perm_media_outlined),
    //                         ],
    //                       ),
    //                       SizedBox(
    //                         height: 15,
    //                       ),
    //                       Container(
    //                         height: 1,
    //                         width: MediaQuery.of(context).size.width * 0.99,
    //                         color: Colors.grey[600],
    //                       ),
    //                       SizedBox(
    //                         height: 20,
    //                       ),
    //                       Row(
    //                         mainAxisAlignment:
    //                             MainAxisAlignment.spaceAround,
    //                         children: [
    //                           Text(category.products[index].user.call),
    //                           SizedBox(
    //                             width: 230,
    //                           ),
    //                           Icon(Icons.people_rounded),
    //                         ],
    //                       )
    //                     ],
    //                   ),
    //                 )
    //               ],
    //             ),
    //           );
    //         }),
    //   ),
    // ));
  }
}
