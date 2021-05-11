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
      body: SingleChildScrollView( 
     
      )
      );
  }}