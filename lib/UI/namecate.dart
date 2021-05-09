import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:twoo/Models/author.dart';
import 'package:twoo/Models/categoriesWithProducts.dart';
import 'package:twoo/Models/product.dart';

class Namecate extends StatefulWidget {
  final CategoriesWithProducts category;
 

  const Namecate({Key key, this.category}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return new _Namecate(category,); 
  }
}

class _Namecate extends State<Namecate> {
  final CategoriesWithProducts category;

// List<CategoriesWithProducts> data = new List();
  // List<Product> productlist = new List();
  // List<Author> data1 = new List();

  _Namecate(this.category,);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container(
            //     height: MediaQuery.of(context).size.height * 0.10,
            //     width: MediaQuery.of(context).size.width * 0.99,
            //     color: Colors.yellow),
            Container(
                height: MediaQuery.of(context).size.height * 0.99,
                width: MediaQuery.of(context).size.width * 0.99,
                margin: EdgeInsets.symmetric(horizontal: 2),
                //  color: Colors.purple,
                child: ListView.builder(
                  itemCount: category.length,
                  // scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
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
                            
                            Image.network(category.image),
                          // Container(
                          //   height: 100,width: 200,color: Colors.amber,
                          //   // decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(category.image))),
                          // ),
                            // Text(category.image),
                            SizedBox(height: 10,),
                            Text(category.image),
                             SizedBox(height: 50,),
                            Text(category.id),
                             SizedBox(height: 50,),
                            Text(category.name),
                             SizedBox(height: 50,),
                            Text(category.main.toString()),
                            // Text(category.products.toString())
                          ],
                        ),
                      ),
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}
