import 'package:flutter/material.dart';
import 'package:twoo/Models/news.dart';

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
        backgroundColor: Colors.grey[200],
      ),
      body: SingleChildScrollView(child: 
      Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.10,
            width: MediaQuery.of(context).size.width*0.99,
            color: Colors.grey,
             child: Stack(
                      children: [
                        Positioned(
                          top: 20,
                          left: 350,
                          child: Icon(Icons.now_widgets_outlined),
                        ),
                        Positioned(
                            top: 20,
                            left: 300,
                            child: Text(" اخبار",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16))),
          ]  ))
        ],
      )
      ,),
    );
  }}