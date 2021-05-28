import 'package:flutter/material.dart';
import 'package:twoo/Models/productlatest.dart';
import 'package:flutter_html/flutter_html.dart';

// class SnackBordemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//    return Center(
//      child: new RaisedButton(onPressed:(){
//        final SnackBar snackBar= new SnackBar(content:
//        new Text("snxjdns"),
//        action:  new SnackBarAction(label:"undo",
//         onPressed: (){}),
//        );
//        Scaffold.of(context).showSnackBar(snackBar);
//      }),
//    );

//   }

// }

class Descprolatest extends StatefulWidget {
  final Productlatest pro;

  const Descprolatest({Key key, this.pro}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _Descprolatest(pro);
  }
}

class _Descprolatest extends State<Descprolatest> {
  final Productlatest pro;

  _Descprolatest(this.pro);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, left: 8, right: 8),
              padding: EdgeInsets.only(left: 15, right: 10, top: 10),
              height: MediaQuery.of(context).size.height * 0.10,
              width: MediaQuery.of(context).size.height * 0.88,
              // color: Colors.red,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xfff7c6bc)),

              child: Text(
                pro.name,
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.height * 0.90,
              // color: Colors.pink,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.bookmark_outline_sharp,
                    size: 35,
                  ),
                  Text(
                    "توضیحات",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                  )
                ],
              ),
            ),
            Container(
              height: 2,
              width: MediaQuery.of(context).size.width * 0.90,
              color: Color(0xfff7c6bc),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.only(top: 10, left: 8, right: 8, bottom: 20),
                // height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.height * 0.90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff7c6bc)),
                child: Html(data: pro.description)),
            Container(
              margin: EdgeInsets.only(top: 10, left: 8, right: 8, bottom: 20),
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.height * 0.90,
              // color: Colors.pink,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xfff7c6bc)),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    // padding: EdgeInsets.only(left: 10),
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.height * 0.90,
                    // color: Colors.pink,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "تومان",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w800),
                        ),
                        Text(pro.price.toString()),
                        Spacer(),
                        Text(
                          "قیمت دوره",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 18),
                    // padding: EdgeInsets.only(left: 10),
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.height * 0.90,
                    // color: Colors.yellow,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          pro.createdAtMoment,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(fontSize: 15),
                        ),
                        Spacer(),
                        // SizedBox(
                        //   width: MediaQuery.of(context).size.width * 0.45,
                        // ),
                        Text(
                          "تاریخ انتشار",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  RaisedButton(
                    color: Colors.pink[50],
                    padding: EdgeInsets.only(
                        left: 100, right: 100, top: 10, bottom: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Text(
                      'خرید این دوره',
                      style: TextStyle(fontSize: 15),
                    ),
                    onPressed: () {},
                  ),
                  Spacer()
                ],
              ),
            ),
            Spacer(),
          ],
        ),
        
      ),
    );
  }
}
