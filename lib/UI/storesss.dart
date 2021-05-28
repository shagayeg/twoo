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
          backgroundColor: Colors.white,
          actions: [
            Text(
              sto.store.name,
              style: TextStyle(
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
            ),
            Padding(padding: EdgeInsets.all(20)),
          ],
        
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
                        height: MediaQuery.of(context).size.height * 0.60,
                        margin: EdgeInsets.all(10),
                        width: 250,
                        // color: Colors.pink[200],
                        child: Column(children: [
                          
                        ]));
                  },
                ),
              )
            ],
          ),
        ));
  }
}
