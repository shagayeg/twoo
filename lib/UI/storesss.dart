

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:twoo/Models/stores.dart';

class Storesss extends StatefulWidget {
  final Stores sto;

  const Storesss({Key key, this.sto}) : super(key: key);

  @override 
  State<StatefulWidget> createState() {
    return  _Storesss(sto); 
  }
}
// ignore: unused_element
class _Storesss extends State<Storesss>{
  final Stores sto;

  _Storesss(this.sto);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
        backgroundColor: Colors.grey[300],
      ),
      body: SingleChildScrollView(child: 
      Column(children: [
        Container(
            height: MediaQuery.of(context).size.height * 0.99,
                width: MediaQuery.of(context).size.width * 0.99,
                margin: EdgeInsets.symmetric(horizontal: 2),
                color: Colors.green,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context,index){
                    return Card(
                   
                      semanticContainer: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      elevation: 5,
                      margin: EdgeInsets.all(10),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: 250,
                        color: Colors.pink[200],
                        child: Column(
                          children: [
                            Text(sto.store.toString())
                           ] )));
                  },
                ),
        )
      ],)
      ,)
    );
  }

}


