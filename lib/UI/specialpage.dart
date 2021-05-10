import 'package:flutter/material.dart';
import 'package:twoo/Models/specialproducts.dart';

class Specialpage extends StatefulWidget {
  final Specialproduct spec;

  const Specialpage({Key key, this.spec}) : super(key: key);

  @override 
  State<StatefulWidget> createState() {
    return  _Specialpage(spec); 
  }
}
// ignore: unused_element
class _Specialpage extends State<Specialpage>{
  final Specialproduct spec;

  _Specialpage(this.spec);

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
                // color: Colors.green,
                child: ListView.builder(
                  itemCount:spec.toString().length,
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
                            Text(spec.user.toString()),
                            Text(spec.subjects.toString()),
                            Text(spec.name),
                          
                            Text(spec.count.toString())
                           ] )));
                  },
                ),
        )
      ],)
      ,)
    );
  }

}


