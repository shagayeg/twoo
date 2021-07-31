import 'package:flutter/material.dart';
import 'package:flutter_html/html_parser.dart';
import 'package:flutter_html/style.dart';
import 'package:twoo/Models/news.dart';
import 'package:flutter_html/flutter_html.dart';

class Mynews extends StatefulWidget {
  final News news;

  const Mynews({Key key, this.news}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Mynews(news);
  }
}

// ignore: unused_element
class _Mynews extends State<Mynews> {
  final News news;

  _Mynews(this.news);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        backgroundColor: Colors.white
      ),
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
                news.name,
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ),
            Container(
               padding: EdgeInsets.symmetric(horizontal: 10),
               margin: EdgeInsets.only(top: 10, left: 8, right: 8, bottom: 20),
              // height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.height * 0.90,
               decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff7c6bc)),
                          child: Html(
                data: news.desc,
              ),
            ),
          ],
        ),
        // child: Html(
        //   data: news.desc,
        // ),
      ),
    );
  }
}
