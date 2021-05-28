import 'dart:convert';
import 'dart:developer';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:twoo/API/HomePageAPI.dart';
import 'package:twoo/Models/author.dart';
import 'package:twoo/Models/categoriesWithProducts.dart';
import 'package:twoo/Models/documents.dart';
import 'package:twoo/Models/mainnews.dart';
import 'package:twoo/Models/news.dart';
import 'package:twoo/Models/product.dart';
import 'package:twoo/Models/productlatest.dart';
import 'package:twoo/Models/productpopular.dart';
import 'package:twoo/Models/sliders.dart';
import 'package:twoo/Models/specialproducts.dart';
import 'package:twoo/Models/store.dart';
import 'package:twoo/Models/stores.dart';
import 'package:twoo/UI/descprolatest.dart';
import 'package:twoo/UI/description.dart';
import 'package:twoo/UI/docgage.dart';
import 'package:twoo/UI/mainnewspage.dart';
import 'package:twoo/UI/mynews.dart';
import 'package:twoo/UI/namecate.dart';
import 'package:twoo/UI/specialpage.dart';
import 'package:twoo/UI/storesss.dart';
import 'package:flutter_html/flutter_html.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isReq = false;
  List<CategoriesWithProducts> data = new List();
  // List<Product> productList = new List();

  List<Stores> storesList = new List();
  List<Documents> documentsList = new List();
  List<Store> data3 = new List();
  Mainnews mainNew = new Mainnews();
  List<Specialproduct> specialproductsList = new List();
  List<MySlider> sliderList = new List();
  List<News> newsList = new List();
  List<Productlatest> productlatestList = new List();
  List<Productpopular> productpopularList = new List();

  @override
  void initState() {
    super.initState();
    setState(() {
      _isReq = true;
    });
    getHomeData().then((value) {
      setState(() {
        _isReq = false;
      });
      // log(value.statusCode.toString());
      if (value.statusCode == 200) {
        var body = jsonDecode(value.body);
        setState(() {
          data = body["categoriesWithProducts"]
              .map<CategoriesWithProducts>(
                  (json) => CategoriesWithProducts.parser(json))
              .toList();

          storesList = body["stores"]
              .map<Stores>((json) => Stores.parser(json))
              .toList();

          documentsList = body["documents"]
              .map<Documents>((json) => Documents.parser(json))
              .toList();
          mainNew = Mainnews.parser(body["main_news"]);
          specialproductsList = body["specialProducts"]
              .map<Specialproduct>((json) => Specialproduct.parser(json))
              .toList();
          newsList =
              body["news"].map<News>((json) => News.parser(json)).toList();
          productlatestList = body["product_latest"]
              .map<Productlatest>(
                  (json) => Productlatest.productlatestparser(json))
              .toList();
          productpopularList = body["product_popular"]
              .map<Productpopular>(
                  (json) => Productpopular.productpopularparser(json))
              .toList();
          sliderList = body["sliders"]
              .map<MySlider>((json) => MySlider.parser(json))
              .toList();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),
      bottomNavigationBar: BottomNavigationBar(
        // currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('خانه'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.menu_sharp),
            title: new Text('دسته بندی '),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('دیجی کالا من')),
        ],
      ),
      //  backgroundColor: Colors.pink[100],
      body: _isReq
          ? Center(
              child: Text("درحال ارتباط با سرور ..."),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  // Container(
                  //   color: Colors.purple,
                  //   margin: EdgeInsets.only(
                  //     left: 2,
                  //   ),
                  //   height: MediaQuery.of(context).size.height * 0.10,
                  //   width: MediaQuery.of(context).size.width * 0.99,
                  // ),

                  // showing data

                  /////////////////////////////////////////////////////////////////////
                  // Container(
                  //   height: MediaQuery.of(context).size.height * 0.3,
                  //   width: MediaQuery.of(context).size.width,
                  //   color: Colors.blue,
                  //   child: ListView.builder(
                  //     itemCount: data.length,
                  //     scrollDirection: Axis.horizontal,
                  //     itemBuilder: (context, index) {
                  //       //  log(data.length.toString());
                  //       return Container(
                  //         height: MediaQuery.of(context).size.height * 0.3,
                  //         width: 200,
                  //         color: Colors.red,
                  //         margin: EdgeInsets.symmetric(horizontal: 12),
                  //         child: Column(
                  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //           crossAxisAlignment: CrossAxisAlignment.center,
                  //           children: [
                  //             Text(
                  //               "image : " + data[index].image ?? "not set",
                  //               textAlign: TextAlign.center,
                  //             ),
                  //             Text(
                  //               "name : " + data[index].name ?? "not set",
                  //               textAlign: TextAlign.center,
                  //             ),
                  //             Text(
                  //               "main : " + data[index].main.toString(),
                  //               textAlign: TextAlign.center,
                  //             ),
                  //             Text(
                  //               "id : " + data[index].id ?? "not set",
                  //               textAlign: TextAlign.center,
                  //             ),
                  //             Text(
                  //               "products.length : " +
                  //                   data[index].products.length.toString(),
                  //               textAlign: TextAlign.center,
                  //             ),
                  //           ],
                  //         ),
                  //       );
                  //     },
                  //   ),
                  // ),
                  ////////////////////////////////////////////////////////////////////

                  SizedBox(
                    height: 5,
                  ),
                  // first pageView
                  Container(
                    height: MediaQuery.of(context).size.height * 0.20,
                    width: MediaQuery.of(context).size.width * 0.99,
                    //  color: Colors.red,
                    child: ListView.builder(
                      reverse: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: sliderList[0].imageid.length,
                      itemBuilder: (context, index) {
                        // print("https://bab.ir/media/" +
                        //     sliderList[index].imageid.toString() + " : image id");
                        return Container(
                            height: MediaQuery.of(context).size.height * 0.20,
                            width: MediaQuery.of(context).size.width * 0.99,
                            child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Image.network(
                                  "https://bab.ir/media/" +
                                      sliderList[0].imageid[index].toString(),
                                  fit: BoxFit.fill,
                                ),
                                semanticContainer: true,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                )));
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 30, left: 10),
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width * 0.99,
                    // color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 120,
                        ),
                        Text("دسته بندی محصولات",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 16)),
                      ],
                    ),
                  ),

                  Container(
                    height: 2,
                    width: MediaQuery.of(context).size.width * 0.90,
                    color: Color(0xfff7c6bc),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width * 0.99,
                    // color: Colors.orange,
                    child: ListView.builder(
                      reverse: true,
                      itemCount: data.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            setState(() {});
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => new Namecate(
                                          category: data[index],
                                        )));
                          },
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 22),
                                height:
                                    MediaQuery.of(context).size.height * 0.10,
                                width:
                                    MediaQuery.of(context).size.height * 0.08,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Color(0xffe9967a),
                                    shape: BoxShape.circle
                                    // borderRadius: BorderRadius.circular(80.0),
                                    ),
                                // child: Icon(Icons.topic_rounded,
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    "http://goftavard.ir/media/" +
                                        data[index].image,
                                  ),
                                  backgroundColor: Color(0xff7c6bc),
                                ),
                              ),
                              Text(data[index].name),
                            ],
                          ),
                        );
                      },
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  // product_popular widget
                  Container(
                    padding: EdgeInsets.only(right: 30, left: 10),
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width * 0.99,
                    // color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 120,
                        ),
                        Text(" محصولات محبوب",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 16)),
                      ],
                    ),
                  ),

                  Container(
                    height: 2,
                    width: MediaQuery.of(context).size.width * 0.90,
                    color: Color(0xfff7c6bc),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Container(
                    height: MediaQuery.of(context).size.height * 0.52,
                    width: MediaQuery.of(context).size.width * 0.99,
                    // color: Colors.pink[300],
                    child: ListView.builder(
                      reverse: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: productpopularList.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            setState(() {});
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => new Description(
                                          pop: productpopularList[index],
                                        )));
                          },
                          child: Container(
                              height: MediaQuery.of(context).size.height * 0.30,
                              width: MediaQuery.of(context).size.width * 0.99,
                              // color: Colors.grey[200],
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Color(0xfff7c6bc)),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                        // padding: EdgeInsets.all(10),
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.28,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.99,
                                        // color: Colors.red,
                                        // decoration: BoxDecoration(
                                        //   borderRadius: BorderRadius.circular(20),
                                        //   // color: Colors.pink
                                        // ),
                                        child: Stack(
                                          children: [
                                            Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.25,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.99,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(16.0),
                                                    topRight:
                                                        Radius.circular(16.0)),
                                                child: Image.network(
                                                  "http://goftavard.ir" +
                                                      productpopularList[index]
                                                          .defaultimage,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(4),
                                              // height: MediaQuery.of(context)
                                              //         .size
                                              //         .height *
                                              //     0.05,
                                              // width: MediaQuery.of(context)
                                              //         .size
                                              //         .width *
                                              //     0.11,
                                              child: Text("%" +
                                                  productpopularList[index]
                                                      .discountamount
                                                      .toString()),
                                              decoration: BoxDecoration(
                                                color: Colors.red[400],
                                                borderRadius:
                                                    BorderRadius.circular(50.0),
                                              ),
                                            ),
                                          ],
                                        )),
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 20),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.08,
                                      width: MediaQuery.of(context).size.width *
                                          0.92,
                                      // color: Colors.red,
                                      child: Text(
                                        productpopularList[index].name,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16),
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 20),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.06,
                                      width: MediaQuery.of(context).size.width *
                                          0.92,
                                      // color: Colors.pink,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(productpopularList[index]
                                              .price
                                              .toString()),
                                          Text(
                                            "تومان",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700),
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.35,
                                          ),
                                          Text(productlatestList[index]
                                              .user
                                              .fullname),
                                          Icon(Icons.perm_media_outlined),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 1,
                                      width: MediaQuery.of(context).size.width *
                                          0.99,
                                      color: Colors.grey[600],
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(top: 15),
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 20),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.05,
                                      width: MediaQuery.of(context).size.width *
                                          0.92,
                                      // color: Colors.yellow,
                                      child: Row(
                                        children: [
                                          Text(
                                            productlatestList[index]
                                                .createdAtMoment,
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                                color: Colors.grey[700]),
                                          ),
                                        ],
                                      ),
                                    )
                                  ])),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.only(right: 20, left: 10),
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width * 0.99,
                    // color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(" اخبار",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 18)),
                      ],
                    ),
                  ),
                  Container(
                    height: 2,
                    width: MediaQuery.of(context).size.width * 0.90,
                    color: Color(0xfff7c6bc),
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.60,
                      width: MediaQuery.of(context).size.width * 0.99,
                      margin: EdgeInsets.all(10),
                      // decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(20),
                      //     color: Color(0xfff7c6bc)),
                      // color: Colors.pink[300],
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: newsList.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              setState(() {});
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => new Mynews(
                                            news: newsList[index],
                                          )));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Color(0xfff7c6bc)),
                              height: MediaQuery.of(context).size.height * 0.20,
                              width: MediaQuery.of(context).size.width * 0.90,
                              // color: Color(0xfff7c6bc),
                              margin: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.20,
                                    width: MediaQuery.of(context).size.width *
                                        0.99,
                                    // margin: EdgeInsets.all(10),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(16.0),
                                          topRight: Radius.circular(16.0)),
                                      child: Image.network(
                                        "http://goftavard.ir/media/" +
                                            newsList[index].image.name,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    // color: Colors.red,
                                    // child: Image.network(
                                    //   "http://goftavard.ir/media/" +
                                    //       newsList[index].image.name,
                                    //   fit: BoxFit.fill,
                                    // ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 12),
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                    width: MediaQuery.of(context).size.width *
                                        0.90,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "آخرین بازدید",
                                          style: TextStyle(
                                              color: Colors.grey[600]),
                                        ),
                                        Icon(Icons.access_time_outlined,
                                            color: Colors.grey[600])
                                      ],
                                    ),
                                  ),
                                  Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 12),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.08,
                                      width: MediaQuery.of(context).size.width *
                                          0.99,
                                      // color: Colors.red,
                                      child: Text(
                                        newsList[index].name,
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15),

                                        // child: Column(
                                        //   children: [
                                        //     Text(
                                        //       newsList[index].name,
                                        //       textAlign: TextAlign.right,
                                        //       style: TextStyle(
                                        //           fontWeight: FontWeight.w700,
                                        //           fontSize: 15),
                                        //     ),
                                        //     SizedBox(
                                        //       height: 20,
                                        //     ),
                                        //     Text(
                                        //       newsList[index].subtitle,
                                        //       textAlign: TextAlign.right,
                                        //     )
                                        //   ],
                                        // ),
                                      )),
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    height: MediaQuery.of(context).size.height *
                                        0.20,
                                    width: MediaQuery.of(context).size.width *
                                        0.90,
                                    // color: Colors.pink,
                                    child: Text(
                                      newsList[index].subtitle,
                                      textAlign: TextAlign.right,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 40, left: 10),
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width * 0.99,
                    // color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 200,
                        ),
                        Text(" آخرین محصولات",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 16)),
                      ],
                    ),
                  ),
                  Container(
                    height: 2,
                    width: MediaQuery.of(context).size.width * 0.90,
                    color: Color(0xfff7c6bc),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.54,
                    width: MediaQuery.of(context).size.width * 0.99,
                    //  decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(20),
                    //     color: Color(0xfff7c6bc)),
                    // color: Colors.pink[300],
                    child: ListView.builder(
                      reverse: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: productlatestList.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            setState(() {});
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => new Descprolatest(
                                          pro: productlatestList[index],
                                        )));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Color(0xfff7c6bc)),
                            height: MediaQuery.of(context).size.height * 0.40,
                            width: MediaQuery.of(context).size.width * 0.99,

                            // color: Colors.purple[100],
                            margin: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.25,
                                  width:
                                      MediaQuery.of(context).size.width * 0.99,
                                  child: Stack(children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.25,
                                      width: MediaQuery.of(context).size.width *
                                          0.99,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(16.0),
                                            topRight: Radius.circular(16.0)),
                                        child: Image.network(
                                          "http://goftavard.ir" +
                                              productlatestList[index]
                                                  .firstimage,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ]),
                                  // color: Colors.red,
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 8),
                                  margin: EdgeInsets.symmetric(horizontal: 20),
                                  height:
                                      MediaQuery.of(context).size.height * 0.09,
                                  width:
                                      MediaQuery.of(context).size.width * 0.92,
                                  // color: Colors.red,
                                  child: Text(
                                    productlatestList[index].name,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Container(
                                  // padding: EdgeInsets.only(top: 10),
                                  margin: EdgeInsets.symmetric(horizontal: 20),
                                  height:
                                      MediaQuery.of(context).size.height * 0.08,
                                  width:
                                      MediaQuery.of(context).size.width * 0.92,
                                  // color: Colors.pink,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(productlatestList[index]
                                          .price
                                          .toString()),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "تومان",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.35,
                                      ),
                                      Text(productlatestList[index]
                                          .user
                                          .fullname),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(Icons.perm_media_outlined),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 1,
                                  width:
                                      MediaQuery.of(context).size.width * 0.99,
                                  color: Colors.grey[600],
                                ),
                                Container(
                                    padding: EdgeInsets.only(top: 5),
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                    width: MediaQuery.of(context).size.width *
                                        0.92,
                                    // color: Colors.yellow,
                                    child: Row(
                                      children: [
                                        Text(
                                          productlatestList[index]
                                              .createdAtMoment,
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(
                                              color: Colors.grey[700]),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        // Icon(
                                        //   Icons.access_time,
                                        //   color: Colors.grey[600],
                                        // ),
                                      ],
                                    ))
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 15),
                      padding: EdgeInsets.only(right: 15),
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.99,
                      // color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("فروشگاه",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 16)),
                        ],
                      )),
                  Container(
                    height: 2,
                    width: MediaQuery.of(context).size.width * 0.99,
                    color: Color(0xfff7c6bc),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width * 0.99,
                    // color: Colors.amber,
                    child: ListView.builder(
                        reverse: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: storesList.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            splashColor: Colors.transparent,
                            child: Column(
                              children: [
                                Container(
                                  // color: Colors.cyan,
                                  margin: EdgeInsets.symmetric(horizontal: 40),
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Color(0xfff7c6bc),
                                    borderRadius: BorderRadius.circular(80.0),
                                  ),
                                  child: Icon(
                                    Icons.store_mall_directory_outlined,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    // width: MediaQuery.of(context).size.width*0.40,
                                    // color: Colors.yellow,
                                    child: Text(
                                      storesList[index].store.name,
                                      textAlign: TextAlign.right,
                                    )),
                              ],
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width * 0.99,
                    // color: Colors.red,
                    child: Stack(
                      children: [
                        Positioned(
                            top: 20,
                            left: 300,
                            child: Text(" اسناد",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18))),
                        Positioned(
                          top: 60,
                          left: 15,
                          right: 15,
                          child: Container(
                            height: 2,
                            width: MediaQuery.of(context).size.width * 0.99,
                            color: Color(0xfff7c6bc),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.32,
                    width: 250,
                    // color: Colors.red[300],
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: documentsList.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            // setState(() {});
                            // Navigator.push(
                            //   context,
                            //   new MaterialPageRoute(
                            //     builder: (context) => new Docpage(
                            //       // sto: storesList[index],
                            //
                            //     ),
                            //   ),
                          },
                          child: Column(
                            children: [
                              Card(
                                child: Image.network(
                                  "http://goftavard.ir/media/" +
                                      documentsList[index].image.name,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),

                  SizedBox(
                    height: 40,
                  ),

                  // mainNew Widget
                  Container(
                      padding: EdgeInsets.only(right: 8),
                      // height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.99,
                      // color: Colors.red,
                      child: Text(mainNew.name,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ))),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    // padding: EdgeInsets.only(left: 10),
                    height: 2,
                    width: MediaQuery.of(context).size.width * 0.90,
                    color: Color(0xfff7c6bc),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.40,
                      width: MediaQuery.of(context).size.width * 0.90,
                      color: Colors.amberAccent,
                      child: Image.network(
                        "http://goftavard.ir/media/" + mainNew.image.name,
                        fit: BoxFit.fill,
                      )),
                  // Container(
                  //     decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(16),
                  //           color: Color(0xfff7c6bc)),
                  //   padding: EdgeInsets.symmetric(horizontal: 110,vertical: 10),
                  //     margin: EdgeInsets.only(top: 20,),
                  //    height: MediaQuery.of(context).size.height * 0.06,
                  // width: MediaQuery.of(context).size.width * 0.90,
                  // // color: Colors.red,
                  // child: Text("مشاهده توضیحات",textAlign: TextAlign.right,style: TextStyle(fontSize:15,fontWeight: FontWeight.w700,),),
                  // ),
                  SizedBox(
                    height: 80,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 20),
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.99,
                    // color: Colors.grey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "محصولات ویژه",
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 18),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    height: 2,
                    width: MediaQuery.of(context).size.width * 0.90,
                    color: Color(0xfff7c6bc),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.60,
                      width: MediaQuery.of(context).size.width * 0.99,
                      // color: Color(0xffff7c6bc),
                      color: Colors.pink[100],
                      child: ListView.builder(
                          reverse: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: specialproductsList.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                setState(() {});
                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) => new Specialpage(
                                              spec: specialproductsList[index],
                                            )));
                              },
                              child: Row(children: [
                                Card(
                                    // color: Color(0xfff7c6bc) ,
                                    margin: EdgeInsets.only(
                                        bottom: 14, top: 15, left: 10),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.60,
                                      width: MediaQuery.of(context).size.width *
                                          0.55,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.20,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.50,
                                            margin: EdgeInsetsDirectional.only(
                                                top: 5),
                                            // color: Colors.red,
                                            child: Image.network(
                                              "http://bab.ir" +
                                                  productpopularList[index]
                                                      .firstimage,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          // SizedBox(height: 10,),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 3, right: 5, top: 40),
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.30,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.55,
                                            // color: Colors.pink,
                                            child: Column(
                                              children: [
                                                Text(
                                                  specialproductsList[index]
                                                      .name,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w800),
                                                  textAlign: TextAlign.right,
                                                ),
                                                SizedBox(
                                                  height: 120,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      "تومان",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w800),
                                                    ),
                                                    Text(specialproductsList[
                                                            index]
                                                        .price
                                                        .toString()),
                                                    SizedBox(
                                                      width: 80,
                                                    ),
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                          left: 8, top: 5),
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.03,
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.11,
                                                      child: Text("%" +
                                                          specialproductsList[
                                                                  index]
                                                              .discountamount
                                                              .toString()),
                                                      decoration: BoxDecoration(
                                                        color: Colors.red[400],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50.0),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(top: 15),
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.03,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.52,
                                                  // color: Colors.red,
                                                  child: Text(
                                                    specialproductsList[index]
                                                        .createdAtMoment,
                                                    textDirection:
                                                        TextDirection.rtl,
                                                    style: TextStyle(
                                                        color:
                                                            Colors.grey[500]),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.6,
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  child: Image.network(
                                    // "https://dapkala.com/wp-content/uploads/2021/01/%D9%84%DA%AF%D9%88-%D9%BE%DB%8C%D8%B4%D9%86%D9%87%D8%A7%D8%AF-%D8%B4%DA%AF%D9%81%D8%AA-%D8%A7%D9%86%DA%AF%DB%8C%D8%B2-1-1.png",
                                    "https://i.pinimg.com/750x/7d/e9/f4/7de9f46f1a60aa71d573a01d6c4918fe.jpg",
                                    fit: BoxFit.fill,
                                  ),
                                  // color: Colors.red
                                ),
                              ]),
                            );
                          })),

                  // end specialProducts
                ],
              ),
            ),
    );
  }
}
