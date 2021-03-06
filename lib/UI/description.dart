import 'package:flutter/material.dart';
import 'package:twoo/Models/productpopular.dart';
import 'package:flutter_html/flutter_html.dart';

class Description extends StatefulWidget {
  final Productpopular pop;

  const Description({Key key, this.pop}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _Description(pop);
  }
}

class _Description extends State<Description> {
  final Productpopular pop;

  _Description(this.pop);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
         leading: BackButton(
     color: Colors.black
   ), 
        // centerTitle: false,
        //   title: Container(
        //     width: MediaQuery.of(context).size.width,
        //     child: Text(
        //       "kmkajsn",
        //       style: TextStyle(
        //           color: Colors.grey[700],
        //           fontWeight: FontWeight.w700,
        //           fontSize: 20),
        //       textAlign: TextAlign.end,
        //     ),
        //   ),
        backgroundColor: Colors.white),
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
                pop.name,
                textAlign: TextAlign.right,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
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
                    "??????????????",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
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
                child: Html(data: pop.description)),
            Container(
              margin: EdgeInsets.only(top: 10, left: 8, right: 8, bottom: 20),
              height: MediaQuery.of(context).size.height * 0.30,
              width: MediaQuery.of(context).size.height * 0.90,
              // color: Colors.pink,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xfff7c6bc)),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 18),
                    // padding: EdgeInsets.only(left: 10),
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.height * 0.90,
                    // color: Colors.pink,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "??????????",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w800),
                        ),
                        Text(pop.price.toString()),
                        Spacer(),
                        // SizedBox(
                        //   width: MediaQuery.of(context).size.width * 0.40,
                        // ),
                        Text(
                          "???????? ????????",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    padding: EdgeInsets.only(left: 10),
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.height * 0.90,
                    // color: Colors.yellow,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          pop.createdAtMoment,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(fontSize: 15),
                        ),
                        Spacer(),
                        // SizedBox(
                        //   width: MediaQuery.of(context).size.width * 0.40,
                        // ),
                        Text(
                          "?????????? ????????????",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RaisedButton(
                    color: Colors.pink[50],
                    padding: EdgeInsets.only(
                        left: 100, right: 100, top: 10, bottom: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Text(
                      '???????? ?????? ????????',
                      style: TextStyle(fontSize: 15),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
     
    );
  }
}
