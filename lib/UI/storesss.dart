import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:twoo/Models/stores.dart';

class Storesss extends StatefulWidget {
  final Stores sto;

  const Storesss({Key key, this.sto}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Storesss(sto);
  }
}

// ignore: unused_element
class _Storesss extends State<Storesss> {
  final Stores sto;

  _Storesss(this.sto);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
             

                // color: Colors.green,
              
              Container(
                height: MediaQuery.of(context).size.height * 0.99,
                width: MediaQuery.of(context).size.width * 0.99,

                // color: Colors.green,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: sto.toString().length,
                  itemBuilder: (context, index) {
                    return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xfff7c6bc)),
                        padding: EdgeInsets.symmetric(vertical: 20),
                        height: MediaQuery.of(context).size.height * 0.5,
                        margin: EdgeInsets.all(10),
                        width: 250,
                        // color: Colors.pink[200],
                        child: Column(children: [
                          Container(
                              height: MediaQuery.of(context).size.height*0.25,
                                width: MediaQuery.of(context).size.width*0.90,
                                color: Colors.red,
                                child: Image.network("http://goftavard.ir"+sto.store.owner.avatar,fit: BoxFit.fill,),

                          ),
                          Container(
                            padding: EdgeInsets.only(left: 210,top: 20),
                            height: MediaQuery.of(context).size.height*0.08,
                          width: MediaQuery.of(context).size.width*0.90,
                          // color: Colors.teal,
                          child: Text(sto.store.name,style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),),
                          )
                          //     Container(
                          //       height:
                          //           MediaQuery.of(context).size.height * 0.20,
                          //       width: MediaQuery.of(context).size.width * 0.99,
                          //       // color: Colors.purple,
                          //      child:
                          //   Image.network("http://goftavard.ir"+sto.store.owner.avatar,fit: BoxFit.fill,),

                          //  ),

                          //     Text(sto.store.city.name),
                          //     Text(sto.store.name),
                          //     Text(sto.store.owner.fullname),
                          //     Text(sto.store.owner.cellphone),
                          //       Text(sto.store.email),
                        ]));
                  },
                ),
              )
            ],
          ),
        ));
  }
}
