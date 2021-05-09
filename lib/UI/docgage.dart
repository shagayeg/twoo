import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import 'package:twoo/Models/documents.dart';

class Docpage extends StatefulWidget {
  final Documents doc;

  const Docpage({Key key, this.doc}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Docpage(doc);
  }
}

// ignore: unused_element
class _Docpage extends State<Docpage> {
  final Documents doc;

  _Docpage(this.doc);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    log(doc.subtitle);
    // log(doc.)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.58,
          width: 800,
          color: Colors.red[300],
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: doc.toString().length,
            itemBuilder: (context, index) {
              return Card(
                margin:
                    EdgeInsetsDirectional.only(bottom: 20, top: 20, start: 10),
                child: Container(
                  height: 100,
                  width: 200,
                  child: Column(
                    children: [
                      Text(doc.name),
                      Text(doc.image.toString()),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
