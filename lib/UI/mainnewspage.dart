import 'package:flutter/material.dart';
import 'package:twoo/Models/documents.dart';
import 'package:twoo/Models/mainnews.dart';

class Mainnewspage extends StatefulWidget {
  final Mainnews main;

  const Mainnewspage({Key key, this.main}) : super(key: key);

  @override 
  State<StatefulWidget> createState() {
    return _Mainnewspage(main); 
  }
}
// ignore: unused_element
class _Mainnewspage extends State<Mainnewspage>{
  final Mainnews main;

  _Mainnewspage(this.main);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
        backgroundColor: Colors.grey[300],
      ),
      body: SingleChildScrollView(child: 
       Container(
                    height: MediaQuery.of(context).size.height * 0.58,
                    width: 800,
                    color: Colors.red[300],
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      // itemCount: main.toString().length,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Card(
                            margin: EdgeInsetsDirectional.only(
                                bottom: 20, top: 20, start: 10),
                            child: Container(
                              height: 100,
                              width: 200,
                                child: Column(
                                  children: [
                                    Text(main.name),
                                    Text(main.id)
                                    // Text(main.name),
                                    // Text(main.image.toString()),
                                 
                                    
                                    
                                    
                                  ],
                                ),
                        ));} )
      )
      )
      );
  }}