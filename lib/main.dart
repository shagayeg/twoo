import 'package:flutter/material.dart';
import 'package:twoo/UI/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

<<<<<<< HEAD
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        bottomNavigationBar: BottomNavigationBar(
          // currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text('خانه'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.menu_sharp),
              title: new Text('دسته بندی '),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text('دیجی کالا من')),
          ],
        ),
        //  backgroundColor: Colors.pink[100],
        body: SingleChildScrollView(
            child: Column(children: [
          // Container(
          //   color: Colors.purple,
          //   margin: EdgeInsets.only(
          //     left: 2,
          //   ),
          //   height: MediaQuery.of(context).size.height * 0.10,
          //   width: MediaQuery.of(context).size.width * 0.99,
          // ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.20,
            width: MediaQuery.of(context).size.width * 0.99,
            // color: Colors.red,
            child: PageView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                    height: MediaQuery.of(context).size.height * 0.20,
                    width: MediaQuery.of(context).size.width * 0.99,
                    child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrApy1xHTrFxQmJVuLJd0ErI4V9sHfGYZnFA&usqp=CAU',
                          fit: BoxFit.fill,
                        ),
                        semanticContainer: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ))),
                Container(
                    height: MediaQuery.of(context).size.height * 0.20,
                    width: MediaQuery.of(context).size.width * 0.99,
                    child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_8agyMLfTHQIwb3hPbZcNSqGgRRPt8ezQQw&usqp=CAU',
                          fit: BoxFit.fill,
                        ),
                        semanticContainer: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ))),
                Container(
                    height: MediaQuery.of(context).size.height * 0.20,
                    width: MediaQuery.of(context).size.width * 0.99,
                    child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIX_mcOlFIkavr7tIJY1VELZULTTOlHfEh1A&usqp=CAU',
                          fit: BoxFit.fill,
                        ),
                        semanticContainer: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ))),
                Container(
                    height: MediaQuery.of(context).size.height * 0.20,
                    width: MediaQuery.of(context).size.width * 0.99,
                    child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmaklnUjZVWiQQMBd_vPLOTh7IbIXuGfN_6Q&usqp=CAU',
                          fit: BoxFit.fill,
                        ),
                        semanticContainer: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ))),
                Container(
                    height: MediaQuery.of(context).size.height * 0.20,
                    width: MediaQuery.of(context).size.width * 0.99,
                    child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSo8crUBfiMdviXIkfe9vOyp_yAWvMtp0mGFQ&usqp=CAU',
                          fit: BoxFit.fill,
                        ),
                        semanticContainer: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ))),
                Container(
                    height: MediaQuery.of(context).size.height * 0.20,
                    width: MediaQuery.of(context).size.width * 0.99,
                    child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNcl2prPo-Z85BnvFVmtQeNHTSFcw9MKpiLQ&usqp=CAU',
                          fit: BoxFit.fill,
                        ),
                        semanticContainer: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ))),
                Container(
                    height: MediaQuery.of(context).size.height * 0.20,
                    width: MediaQuery.of(context).size.width * 0.99,
                    child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtMBJ9uPfICWAvJtotkL7UqMesoe2WhwbVIw&usqp=CAU',
                          fit: BoxFit.fill,
                        ),
                        semanticContainer: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ))),
                Container(
                  height: MediaQuery.of(context).size.height * 0.20,
                  width: MediaQuery.of(context).size.width * 0.99,
                  child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3ckkSyaDU4LV6ank_2Axecn5ASXlibQ7s-w&usqp=CAU',
                        fit: BoxFit.fill,
                      ),
                      semanticContainer: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.10,
            width: MediaQuery.of(context).size.width * 0.99,
            //color: Colors.orange,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.red[400],
                        borderRadius: BorderRadius.circular(80.0),
                      ),
                      child: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                    ),
                    Text('فروش ویژه')
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue[300],
                        borderRadius: BorderRadius.circular(80.0),
                      ),
                      child: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                    ),
                    Text('کالای دیجیتالی')
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.green[400],
                        borderRadius: BorderRadius.circular(80.0),
                      ),
                      child: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                    ),
                    Text('سوپر مارکت')
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(80.0),
                      ),
                      child: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                    ),
                    Text('مدو پوشاک')
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.orange[400],
                        borderRadius: BorderRadius.circular(80.0),
                      ),
                      child: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                    ),
                    Text('خانه و آشپزخانه')
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.pink[500],
                        borderRadius: BorderRadius.circular(80.0),
                      ),
                      child: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                    ),
                    Text('دیجی پلاس')
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.orange[800],
                        borderRadius: BorderRadius.circular(80.0),
                      ),
                      child: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                    ),
                    Text('مگنت')
                  ],
                )
              ],
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height * 0.58,
              width: 800,
              color: Colors.red[300],
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 30, bottom: 30),
                      height: MediaQuery.of(context).size.height * 0.40,
                      width: MediaQuery.of(context).size.width * 0.50,
                      // color: Colors.yellowAccent,
                      decoration: BoxDecoration(
                        // color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Stack(
                        children: [
                          // Positioned(
                          //   left: 10,
                          //   top: 10,
                          //   height: MediaQuery.of(context).size.height * 0.20,
                          //   width: MediaQuery.of(context).size.width * 0.50,
                          //   child: Container(
                          //     child: Image.network(
                          //       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9dS3OiKK6s2DYVsY1y1y9otUR_FoetychhJ5Da0CEeLZviws5mjh_hX-7PPii4RUxUdc&usqp=CAU',
                          //       fit: BoxFit.fill,
                          //     ),
                          //   ),
                          // ),
                          Positioned(
                              top: 390,
                              left: 80,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                'مشاهده همه',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              )),
                          Positioned(
                              top: 360,
                              left: 110,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Icon(
                                Icons.chevron_right_outlined,
                                size: 35,
                                color: Colors.white,
                              )),
                          Positioned(
                              top: 80,
                              height: MediaQuery.of(context).size.height * 0.30,
                              width: MediaQuery.of(context).size.width * 0.60,
                              child: Image.network(
                                  'https://dapkala.com/wp-content/uploads/2021/01/%D9%84%DA%AF%D9%88-%D9%BE%DB%8C%D8%B4%D9%86%D9%87%D8%A7%D8%AF-%D8%B4%DA%AF%D9%81%D8%AA-%D8%A7%D9%86%DA%AF%DB%8C%D8%B2-1-1.png')),
                        ],
                      )),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 30, bottom: 30),
                      height: MediaQuery.of(context).size.height * 0.40,
                      width: MediaQuery.of(context).size.width * 0.50,
                      // color: Colors.yellowAccent,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
                            height: MediaQuery.of(context).size.height * 0.20,
                            width: MediaQuery.of(context).size.width * 0.50,
                            child: Container(
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSv8qBprH-rh3OmJe4IORzi3JktQvJ5pRdD1A&usqp=CAU',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 180,
                            left: 5,
                            height: 50,
                            width: 220,
                            child: Text('...کابل تبدیل به لایتینگ کین واله'),
                          ),
                          Positioned(
                            top: 250,
                            right: 10,
                            width: MediaQuery.of(context).size.width * 0.13,
                            height: MediaQuery.of(context).size.height * 0.03,
                            child: Container(
                              padding: EdgeInsets.only(left: 14, top: 3),
                              child: Text(
                                '26%',
                                style: TextStyle(color: Colors.white),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(70.0),
                              ),
                            ),
                          ),
                          Positioned(
                              top: 255,
                              left: 50,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                '26,000',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              )),
                          Positioned(
                              top: 250,
                              left: 10,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.20,
                              child: Text(
                                'تومان',
                                style: TextStyle(fontWeight: FontWeight.w800),
                              )),
                          Positioned(
                              top: 285,
                              left: 50,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                '32,700',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey),
                              )),
                          Positioned(
                              top: 294,
                              left: 50,
                              height: 1,
                              width: 50,
                              child: Container(
                                color: Colors.grey,
                              )),
                          Positioned(
                              top: 385,
                              left: 15,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                '22:49:06',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey[400]),
                              )),
                        ],
                      )),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 30, bottom: 30),
                      height: MediaQuery.of(context).size.height * 0.40,
                      width: MediaQuery.of(context).size.width * 0.50,
                      //color: Colors.yellowAccent,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            height: MediaQuery.of(context).size.height * 0.20,
                            width: MediaQuery.of(context).size.width * 0.50,
                            child: Container(
                              //child: Card(

                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJxB_yC-icqZvlVnSMSsY2wj79DgV81sfNxQemi6R7PNZI5MXNSzom47-DLPs34Y14N3c&usqp=CAU',
                                // fit: BoxFit.fill,
                              ),

                              //semanticContainer: true,
                            ),
                          ),
                          Positioned(
                            top: 180,
                            left: 90,
                            height: 50,
                            width: 220,
                            child: Text('مانیتور ایسوس'),
                          ),
                          Positioned(
                            top: 250,
                            right: 10,
                            width: MediaQuery.of(context).size.width * 0.13,
                            height: MediaQuery.of(context).size.height * 0.03,
                            child: Container(
                              padding: EdgeInsets.only(left: 14, top: 3),
                              child: Text(
                                '8%',
                                style: TextStyle(color: Colors.white),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(70.0),
                              ),
                            ),
                          ),
                          Positioned(
                              top: 255,
                              left: 50,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                '3,450,000',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              )),
                          Positioned(
                              top: 250,
                              left: 10,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.20,
                              child: Text(
                                'تومان',
                                style: TextStyle(fontWeight: FontWeight.w800),
                              )),
                          Positioned(
                              top: 285,
                              left: 50,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                '3,700,000',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey),
                              )),
                          Positioned(
                              top: 294,
                              left: 55,
                              height: 1,
                              width: 50,
                              child: Container(
                                color: Colors.grey,
                              )),
                          Positioned(
                              top: 385,
                              left: 15,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                '21:23:06',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey[400]),
                              )),
                        ],
                      )),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 30, bottom: 30),
                      height: MediaQuery.of(context).size.height * 0.40,
                      width: MediaQuery.of(context).size.width * 0.50,
                      //color: Colors.yellowAccent,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            height: MediaQuery.of(context).size.height * 0.20,
                            width: MediaQuery.of(context).size.width * 0.50,
                            child: Container(
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_2d7o8IANjFcL1R6nNN2p3D51LR-rWfgBLTPp0tmPh78O-O4VODGWntmNhhxghzuQFnw&usqp=CAU',
                              ),
                            ),
                          ),
                          Positioned(
                            top: 180,
                            left: 26,
                            height: 50,
                            width: 220,
                            child: Text('هدفون بی سیم راک مدل 2020'),
                          ),
                          Positioned(
                            top: 250,
                            right: 10,
                            width: MediaQuery.of(context).size.width * 0.13,
                            height: MediaQuery.of(context).size.height * 0.03,
                            child: Container(
                              padding: EdgeInsets.only(left: 14, top: 3),
                              child: Text(
                                '63%',
                                style: TextStyle(color: Colors.white),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(70.0),
                              ),
                            ),
                          ),
                          Positioned(
                              top: 255,
                              left: 50,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                '990,000',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              )),
                          Positioned(
                              top: 250,
                              left: 10,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.20,
                              child: Text(
                                'تومان',
                                style: TextStyle(fontWeight: FontWeight.w800),
                              )),
                          Positioned(
                              top: 285,
                              left: 50,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                '2,700,000',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey),
                              )),
                          Positioned(
                              top: 294,
                              left: 50,
                              height: 1,
                              width: 56,
                              child: Container(
                                color: Colors.grey,
                              )),
                          Positioned(
                              top: 385,
                              left: 15,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                '20:45:06',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey[400]),
                              )),
                        ],
                      )),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 30, bottom: 30),
                      height: MediaQuery.of(context).size.height * 0.40,
                      width: MediaQuery.of(context).size.width * 0.50,
                      //color: Colors.yellowAccent,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
                            height: MediaQuery.of(context).size.height * 0.20,
                            width: MediaQuery.of(context).size.width * 0.50,
                            child: Container(
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYDPJVIMkAF6uNZ7Jdnib8Om01J8JQd41wzw&usqp=CAU',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 180,
                            left: 30,
                            height: 50,
                            width: 220,
                            child: Text('اتومو کرار مدل 9263030'),
                          ),
                          Positioned(
                            top: 250,
                            right: 10,
                            width: MediaQuery.of(context).size.width * 0.13,
                            height: MediaQuery.of(context).size.height * 0.03,
                            child: Container(
                              padding: EdgeInsets.only(left: 14, top: 3),
                              child: Text(
                                '27%',
                                style: TextStyle(color: Colors.white),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(70.0),
                              ),
                            ),
                          ),
                          Positioned(
                              top: 255,
                              left: 50,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                '449,000',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              )),
                          Positioned(
                              top: 250,
                              left: 10,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.20,
                              child: Text(
                                'تومان',
                                style: TextStyle(fontWeight: FontWeight.w800),
                              )),
                          Positioned(
                              top: 285,
                              left: 50,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                '790,000',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey),
                              )),
                          Positioned(
                              top: 294,
                              left: 50,
                              height: 1,
                              width: 50,
                              child: Container(
                                color: Colors.grey,
                              )),
                          Positioned(
                              top: 385,
                              left: 15,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                '23:01:36',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey[400]),
                              )),
                        ],
                      )),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 30, bottom: 30),
                      height: MediaQuery.of(context).size.height * 0.40,
                      width: MediaQuery.of(context).size.width * 0.50,
                      //color: Colors.yellowAccent,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
                            height: MediaQuery.of(context).size.height * 0.20,
                            width: MediaQuery.of(context).size.width * 0.50,
                            child: Container(
                              child: Image.network(
                                'https://sormatik.ir/wp-content/uploads/2019/12/53656.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 180,
                            left: 40,
                            height: 50,
                            width: 220,
                            child: Text('ادکلن مردانه اسکالاره '),
                          ),
                          Positioned(
                            top: 250,
                            right: 10,
                            width: MediaQuery.of(context).size.width * 0.13,
                            height: MediaQuery.of(context).size.height * 0.03,
                            child: Container(
                              padding: EdgeInsets.only(left: 14, top: 3),
                              child: Text(
                                '8%',
                                style: TextStyle(color: Colors.white),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(70.0),
                              ),
                            ),
                          ),
                          Positioned(
                              top: 255,
                              left: 50,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                '158,900',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              )),
                          Positioned(
                              top: 250,
                              left: 10,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.20,
                              child: Text(
                                'تومان',
                                style: TextStyle(fontWeight: FontWeight.w800),
                              )),
                          Positioned(
                              top: 285,
                              left: 50,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                '235,000',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey),
                              )),
                          Positioned(
                              top: 294,
                              left: 50,
                              height: 1,
                              width: 50,
                              child: Container(
                                color: Colors.grey,
                              )),
                          Positioned(
                              top: 385,
                              left: 15,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                '21:49:16',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey[400]),
                              )),
                        ],
                      )),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 30, bottom: 30),
                      height: MediaQuery.of(context).size.height * 0.40,
                      width: MediaQuery.of(context).size.width * 0.50,
                      //color: Colors.yellowAccent,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
                            height: MediaQuery.of(context).size.height * 0.20,
                            width: MediaQuery.of(context).size.width * 0.50,
                            child: Container(
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb6rKsLSivHVCIgaIL4MdBHWFLiSjxZcMO0w&usqp=CAU',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 180,
                            left: 20,
                            height: 50,
                            width: 220,
                            child: Text('صندل مردانه آسیادار مدل آریا'),
                          ),
                          Positioned(
                            top: 250,
                            right: 10,
                            width: MediaQuery.of(context).size.width * 0.13,
                            height: MediaQuery.of(context).size.height * 0.03,
                            child: Container(
                              padding: EdgeInsets.only(left: 14, top: 3),
                              child: Text(
                                '32%',
                                style: TextStyle(color: Colors.white),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(70.0),
                              ),
                            ),
                          ),
                          Positioned(
                              top: 255,
                              left: 50,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                '115,000',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              )),
                          Positioned(
                              top: 250,
                              left: 10,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.20,
                              child: Text(
                                'تومان',
                                style: TextStyle(fontWeight: FontWeight.w800),
                              )),
                          Positioned(
                              top: 285,
                              left: 50,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                '169,000',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey),
                              )),
                          Positioned(
                              top: 294,
                              left: 50,
                              height: 1,
                              width: 50,
                              child: Container(
                                color: Colors.grey,
                              )),
                          Positioned(
                              top: 385,
                              left: 15,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                '22:35:06',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey[400]),
                              )),
                        ],
                      )),
                ],
              )),
          SizedBox(
            height: 15,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.40,
            width: MediaQuery.of(context).size.width * 0.99,
            // color: Colors.pink,
            child: Stack(
              children: [
                Positioned(
                    top: 5,
                    left: 15,
                    height: MediaQuery.of(context).size.height * 0.19,
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbUm7dAB6LY-soLCCBj723-015dtro7KdjOg&usqp=CAU',
                        fit: BoxFit.fill,
                      ),
                      semanticContainer: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    )),
                Positioned(
                    bottom: 280,
                    right: 340,
                    height: 50,
                    width: 50,
                    child: Container(
                        padding: EdgeInsets.only(top: 12, left: 10),
                        child: Text(
                          '30%',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(80.0),
                        ))),
                Positioned(
                    top: 175,
                    left: 15,
                    height: MediaQuery.of(context).size.height * 0.19,
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image.network(
                        'https://dkstatics-public.digikala.com/digikala-products/b5dbde4d47349cf329e9ad7a4d61df0a2eeaa987_1595863260.jpg?x-oss-process=image/resize,m_lfit,h_600,w_600/quality,q_90',
                        fit: BoxFit.fill,
                      ),
                      semanticContainer: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    )),
                Positioned(
                    top: 5,
                    left: 200,
                    height: MediaQuery.of(context).size.height * 0.19,
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm0FoxQ_aKqzjaeI-pZYlyjP5XBxVrBnPMpw&usqp=CAU',
                        fit: BoxFit.fill,
                      ),
                      semanticContainer: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    )),
                Positioned(
                    top: 175,
                    left: 200,
                    height: MediaQuery.of(context).size.height * 0.19,
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf6pQUH-FWXKxHw3p9u7NI9SMrYq4bf6QJMsA41mhXDTkaWqN_s_v9dFUczCrI6_-bTU0&usqp=CAU',
                        fit: BoxFit.fill,
                      ),
                      semanticContainer: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              height: MediaQuery.of(context).size.height * 0.58,
              width: 800,
              color: Colors.green[400],
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 30, bottom: 10),
                      height: MediaQuery.of(context).size.height * 0.40,
                      width: MediaQuery.of(context).size.width * 0.50,
                      // color: Colors.yellowAccent,
                      decoration: BoxDecoration(
                        // color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                              top: 390,
                              left: 80,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                'مشاهده همه',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              )),
                          Positioned(
                              top: 360,
                              left: 110,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Icon(
                                Icons.chevron_right_outlined,
                                size: 35,
                                color: Colors.white,
                              )),
                          Positioned(
                              top: 80,
                              height: MediaQuery.of(context).size.height * 0.30,
                              width: MediaQuery.of(context).size.width * 0.50,
                              child: Image.network(
                                  'https://naayeb.ir/wp-content/uploads/2020/07/93723234.png')),
                        ],
                      )),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 30, bottom: 30),
                      height: MediaQuery.of(context).size.height * 0.40,
                      width: MediaQuery.of(context).size.width * 0.50,
                      // color: Colors.yellowAccent,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
                            height: MediaQuery.of(context).size.height * 0.20,
                            width: MediaQuery.of(context).size.width * 0.50,
                            child: Container(
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSv8qBprH-rh3OmJe4IORzi3JktQvJ5pRdD1A&usqp=CAU',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 180,
                            left: 5,
                            height: 50,
                            width: 220,
                            child: Text('...کابل تبدیل به لایتینگ کین واله'),
                          ),
                          Positioned(
                            top: 250,
                            right: 10,
                            width: MediaQuery.of(context).size.width * 0.13,
                            height: MediaQuery.of(context).size.height * 0.03,
                            child: Container(
                              padding: EdgeInsets.only(left: 14, top: 3),
                              child: Text(
                                '26%',
                                style: TextStyle(color: Colors.white),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(70.0),
                              ),
                            ),
                          ),
                          Positioned(
                              top: 255,
                              left: 50,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                '26,000',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              )),
                          Positioned(
                              top: 250,
                              left: 10,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.20,
                              child: Text(
                                'تومان',
                                style: TextStyle(fontWeight: FontWeight.w800),
                              )),
                          Positioned(
                              top: 285,
                              left: 50,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                '32,700',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey),
                              )),
                          Positioned(
                              top: 294,
                              left: 50,
                              height: 1,
                              width: 50,
                              child: Container(
                                color: Colors.grey,
                              )),
                          Positioned(
                              top: 385,
                              left: 15,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                '22:49:06',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey[400]),
                              )),
                        ],
                      )),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 30, bottom: 30),
                      height: MediaQuery.of(context).size.height * 0.40,
                      width: MediaQuery.of(context).size.width * 0.50,
                      //color: Colors.yellowAccent,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            height: MediaQuery.of(context).size.height * 0.20,
                            width: MediaQuery.of(context).size.width * 0.50,
                            child: Container(
                              //child: Card(

                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJxB_yC-icqZvlVnSMSsY2wj79DgV81sfNxQemi6R7PNZI5MXNSzom47-DLPs34Y14N3c&usqp=CAU',
                                // fit: BoxFit.fill,
                              ),

                              //semanticContainer: true,
                            ),
                          ),
                          Positioned(
                            top: 180,
                            left: 90,
                            height: 50,
                            width: 220,
                            child: Text('مانیتور ایسوس'),
                          ),
                          Positioned(
                            top: 250,
                            right: 10,
                            width: MediaQuery.of(context).size.width * 0.13,
                            height: MediaQuery.of(context).size.height * 0.03,
                            child: Container(
                              padding: EdgeInsets.only(left: 14, top: 3),
                              child: Text(
                                '8%',
                                style: TextStyle(color: Colors.white),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(70.0),
                              ),
                            ),
                          ),
                          Positioned(
                              top: 255,
                              left: 50,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                '3,450,000',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              )),
                          Positioned(
                              top: 250,
                              left: 10,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.20,
                              child: Text(
                                'تومان',
                                style: TextStyle(fontWeight: FontWeight.w800),
                              )),
                          Positioned(
                              top: 285,
                              left: 50,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                '3,700,000',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey),
                              )),
                          Positioned(
                              top: 294,
                              left: 55,
                              height: 1,
                              width: 50,
                              child: Container(
                                color: Colors.grey,
                              )),
                          Positioned(
                              top: 385,
                              left: 15,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                '21:23:06',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey[400]),
                              )),
                        ],
                      )),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 30, bottom: 30),
                      height: MediaQuery.of(context).size.height * 0.40,
                      width: MediaQuery.of(context).size.width * 0.50,
                      //color: Colors.yellowAccent,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            height: MediaQuery.of(context).size.height * 0.20,
                            width: MediaQuery.of(context).size.width * 0.50,
                            child: Container(
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_2d7o8IANjFcL1R6nNN2p3D51LR-rWfgBLTPp0tmPh78O-O4VODGWntmNhhxghzuQFnw&usqp=CAU',
                              ),
                            ),
                          ),
                          Positioned(
                            top: 180,
                            left: 26,
                            height: 50,
                            width: 220,
                            child: Text('هدفون بی سیم راک مدل 2020'),
                          ),
                          Positioned(
                            top: 250,
                            right: 10,
                            width: MediaQuery.of(context).size.width * 0.13,
                            height: MediaQuery.of(context).size.height * 0.03,
                            child: Container(
                              padding: EdgeInsets.only(left: 14, top: 3),
                              child: Text(
                                '63%',
                                style: TextStyle(color: Colors.white),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(70.0),
                              ),
                            ),
                          ),
                          Positioned(
                              top: 255,
                              left: 50,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                '990,000',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              )),
                          Positioned(
                              top: 250,
                              left: 10,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.20,
                              child: Text(
                                'تومان',
                                style: TextStyle(fontWeight: FontWeight.w800),
                              )),
                          Positioned(
                              top: 285,
                              left: 50,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                '2,700,000',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey),
                              )),
                          Positioned(
                              top: 294,
                              left: 50,
                              height: 1,
                              width: 56,
                              child: Container(
                                color: Colors.grey,
                              )),
                          Positioned(
                              top: 385,
                              left: 15,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                '20:45:06',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey[400]),
                              )),
                        ],
                      )),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 30, bottom: 30),
                      height: MediaQuery.of(context).size.height * 0.40,
                      width: MediaQuery.of(context).size.width * 0.50,
                      //color: Colors.yellowAccent,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
                            height: MediaQuery.of(context).size.height * 0.20,
                            width: MediaQuery.of(context).size.width * 0.50,
                            child: Container(
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYDPJVIMkAF6uNZ7Jdnib8Om01J8JQd41wzw&usqp=CAU',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 180,
                            left: 30,
                            height: 50,
                            width: 220,
                            child: Text('اتومو کرار مدل 9263030'),
                          ),
                          Positioned(
                            top: 250,
                            right: 10,
                            width: MediaQuery.of(context).size.width * 0.13,
                            height: MediaQuery.of(context).size.height * 0.03,
                            child: Container(
                              padding: EdgeInsets.only(left: 14, top: 3),
                              child: Text(
                                '27%',
                                style: TextStyle(color: Colors.white),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(70.0),
                              ),
                            ),
                          ),
                          Positioned(
                              top: 255,
                              left: 50,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                '449,000',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              )),
                          Positioned(
                              top: 250,
                              left: 10,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.20,
                              child: Text(
                                'تومان',
                                style: TextStyle(fontWeight: FontWeight.w800),
                              )),
                          Positioned(
                              top: 285,
                              left: 50,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                '790,000',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey),
                              )),
                          Positioned(
                              top: 294,
                              left: 50,
                              height: 1,
                              width: 50,
                              child: Container(
                                color: Colors.grey,
                              )),
                          Positioned(
                              top: 385,
                              left: 15,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                '23:01:36',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey[400]),
                              )),
                        ],
                      )),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 30, bottom: 30),
                      height: MediaQuery.of(context).size.height * 0.40,
                      width: MediaQuery.of(context).size.width * 0.50,
                      //color: Colors.yellowAccent,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
                            height: MediaQuery.of(context).size.height * 0.20,
                            width: MediaQuery.of(context).size.width * 0.50,
                            child: Container(
                              child: Image.network(
                                'https://sormatik.ir/wp-content/uploads/2019/12/53656.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 180,
                            left: 40,
                            height: 50,
                            width: 220,
                            child: Text('ادکلن مردانه اسکالاره '),
                          ),
                          Positioned(
                            top: 250,
                            right: 10,
                            width: MediaQuery.of(context).size.width * 0.13,
                            height: MediaQuery.of(context).size.height * 0.03,
                            child: Container(
                              padding: EdgeInsets.only(left: 14, top: 3),
                              child: Text(
                                '8%',
                                style: TextStyle(color: Colors.white),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(70.0),
                              ),
                            ),
                          ),
                          Positioned(
                              top: 255,
                              left: 50,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                '158,900',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              )),
                          Positioned(
                              top: 250,
                              left: 10,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.20,
                              child: Text(
                                'تومان',
                                style: TextStyle(fontWeight: FontWeight.w800),
                              )),
                          Positioned(
                              top: 285,
                              left: 50,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                '235,000',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey),
                              )),
                          Positioned(
                              top: 294,
                              left: 50,
                              height: 1,
                              width: 50,
                              child: Container(
                                color: Colors.grey,
                              )),
                          Positioned(
                              top: 385,
                              left: 15,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                '21:49:16',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey[400]),
                              )),
                        ],
                      )),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 30, bottom: 30),
                      height: MediaQuery.of(context).size.height * 0.40,
                      width: MediaQuery.of(context).size.width * 0.50,
                      //color: Colors.yellowAccent,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
                            height: MediaQuery.of(context).size.height * 0.20,
                            width: MediaQuery.of(context).size.width * 0.50,
                            child: Container(
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb6rKsLSivHVCIgaIL4MdBHWFLiSjxZcMO0w&usqp=CAU',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 180,
                            left: 20,
                            height: 50,
                            width: 220,
                            child: Text('صندل مردانه آسیادار مدل آریا'),
                          ),
                          Positioned(
                            top: 250,
                            right: 10,
                            width: MediaQuery.of(context).size.width * 0.13,
                            height: MediaQuery.of(context).size.height * 0.03,
                            child: Container(
                              padding: EdgeInsets.only(left: 14, top: 3),
                              child: Text(
                                '32%',
                                style: TextStyle(color: Colors.white),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(70.0),
                              ),
                            ),
                          ),
                          Positioned(
                              top: 255,
                              left: 50,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                '115,000',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              )),
                          Positioned(
                              top: 250,
                              left: 10,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.20,
                              child: Text(
                                'تومان',
                                style: TextStyle(fontWeight: FontWeight.w800),
                              )),
                          Positioned(
                              top: 285,
                              left: 50,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                '169,000',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey),
                              )),
                          Positioned(
                              top: 294,
                              left: 50,
                              height: 1,
                              width: 50,
                              child: Container(
                                color: Colors.grey,
                              )),
                          Positioned(
                              top: 385,
                              left: 15,
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Text(
                                '22:35:06',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey[400]),
                              )),
                        ],
                      )),
                ],
              )),
          SizedBox(
            height: 20,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.10,
            width: MediaQuery.of(context).size.width * 0.99,
            //color: Colors.pink,
            child: Stack(
              children: [
                Positioned(
                    top: 10,
                    left: 270,
                    height: 50,
                    width: 200,
                    child: Text(
                      'شوینده های لباس ',
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
                    )),
                Positioned(
                    top: 40,
                    left: 240,
                    height: 50,
                    width: 200,
                    child: Text(
                      'براساس بازدید های شما ',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.grey),
                    ))
              ],
            ),
          ),
          Container(
            height: 400,
            width: 400,
            // color: Colors.red,
            child: GridView(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              children: <Widget>[
                Image.network(
                    'https://dkstatics-public.digikala.com/digikala-products/976c40a0c289df98b6fe12a4060b120986953149_1604838830.jpg?x-oss-process=image/resize,m_lfit,h_600,w_600/quality,q_90'),
                Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROYdXhpdy_otzpnhV3uoibr4hesYBeHicg-A&usqp=CAU'),
                Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_MzY-V1vbg83pEYJ2rAM6Q1SBrbXMlzEfa1yY-3RJ9S8UencSEDRcxnoXE9D4hcEDqRI&usqp=CAU'),
                Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDHUU6GQL-sLTtndY4u5Y5nGe-xiLdudjD_ZKWu3X27PiZSwiCOIbFm6p4uuqymCBTuJs&usqp=CAU'),
                Image.network(
                    'https://dkstatics-public.digikala.com/digikala-products/112869251.jpg?x-oss-process=image/resize,m_lfit,h_600,w_600/quality,q_80'),
                Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZqFSe_Ve6lgPydjqRivpGP1obHAp4Pbk6Lg&usqp=CAU'),
                Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQo5AkvRORalCV8pUIb6yZTTrXdM1GNI7Z_GA&usqp=CAU'),
                Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcp1aS4tnsCrvPui5-ijlv_0Vyacg364x6hQ&usqp=CAU'),
                Image.network(
                    'https://dkstatics-public.digikala.com/digikala-products/7466efa9001ef541bea32e20d5183fcf273a667b_1614507060.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60')
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.10,
            width: MediaQuery.of(context).size.width * 0.99,
            //color: Colors.pink,
            child: Stack(children: [
              Positioned(
                  top: 10,
                  left: 170,
                  height: 50,
                  width: 200,
                  child: Text(
                    'مشاهده بیش از ۳۰۰ کالا',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                        color: Colors.red),
                  )),
              Positioned(
                  left: 240,
                  height: 50,
                  width: 200,
                  child: Icon(
                    Icons.chevron_right,
                    color: Colors.red,
                  )),
            ]),
          ),
          Container(
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgL4bLKYiyl_dqtYlIqb_HL7ZhmXhMMKex-A&usqp=CAU',
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(10),
            ),
            margin: EdgeInsets.only(left: 5),
            height: MediaQuery.of(context).size.height * 0.20,
            width: MediaQuery.of(context).size.width * 0.85,
            // color: Colors.red,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.10,
            width: MediaQuery.of(context).size.width * 0.99,
            //color: Colors.pink,
            child: Stack(
              children: [
                Positioned(
                    top: 10,
                    left: 300,
                    height: 40,
                    width: 300,
                    child: Text(
                      'گوشی موبایل',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    )),
                Positioned(
                    top: 40,
                    left: 240,
                    height: 40,
                    width: 300,
                    child: Text(
                      'براساس بازدید های شما',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey),
                    ))
              ],
            ),
          ),
          Container(
              height: 400,
              width: 400,
              // color: Colors.red,
              child: GridView(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  children: <Widget>[
                    Image.network(
                        'https://dkstatics-public.digikala.com/digikala-products/1928362.jpg?x-oss-process=image/resize,m_lfit,h_600,w_600/quality,q_80'),
                    Image.network(
                        'https://dkstatics-public.digikala.com/digikala-products/2f5cbd1996ddd89464afeed70d4def6529cb4ed8_1597575940.jpg?x-oss-process=image/resize,m_lfit,h_600,w_600/quality,q_90'),
                    Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKuXKpL1Onq0a-knTezWySNJS3aYVAx2afNw&usqp=CAU'),
                    Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdUgBJOwnvcxQJM09F20VNs9dmcwS0mby2K08AMhwEkWjHjRkfjdIMi6WcT90Kg5OncPI&usqp=CAU'),
                    Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKmM7uuenSw0VXQgfcuxXESXf6-e02Igv8gg&usqp=CAU'),
                    Image.network(
                        'https://www.mydigipay.com/wp-content/uploads/2020/10/121212.png'),
                    Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgngMNglcKjWglRVlKZezu8f1C2If09k4rXAcTcqp8WYKluRpFUlWeUD4q5XOUS2E8apw&usqp=CAU'),
                    Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCLKpMZEzKhhJt6A0_LCxOq5XtjH_vdg3DM13mt4yRwHXi7Qf8dMwbkT_YDAfEjEa8iHs&usqp=CAU'),
                    Image.network(
                        'https://dkstatics-public-2.digikala.com/digikala-products/110063304.jpg?x-oss-process=image/resize,h_1600/quality,q_80'),
                  ])),
          SizedBox(
            height: 15,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.10,
            width: MediaQuery.of(context).size.width * 0.99,
            //color: Colors.pink,
            child: Stack(children: [
              Positioned(
                  top: 10,
                  left: 170,
                  height: 50,
                  width: 200,
                  child: Text(
                    'مشاهده بیش از ۱۰۰ کالا',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                        color: Colors.red),
                  )),
              Positioned(
                  left: 240,
                  height: 50,
                  width: 200,
                  child: Icon(
                    Icons.chevron_right,
                    color: Colors.red,
                  )),
            ]),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.20,
            width: MediaQuery.of(context).size.width * 0.80,
            //color: Colors.pinkAccent,
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.network(
                'https://dkstatics-public-2.digikala.com/digikala-products/110720339.jpg?x-oss-process=image/resize,h_1600/quality,q_80',
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              //elevation: 5,
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.10,
            width: MediaQuery.of(context).size.width * 0.99,
            //  color: Colors.pinkAccent,
            child: Stack(
              children: [
                Positioned(
                    top: 15,
                    left: 365,
                    child: Icon(
                      Icons.star_border_outlined,
                      color: Colors.purple,
                      size: 30,
                    )),
                Positioned(
                    top: 18,
                    left: 245,
                    height: 40,
                    width: 200,
                    child: Text(
                      'کالا های دیجی کالا',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                    )),
                Positioned(
                    top: 18,
                    left: 10,
                    height: 40,
                    width: 200,
                    child: Text(
                      'مشاهده همه',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Colors.blue[400]),
                    ))
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.40,
            width: MediaQuery.of(context).size.width * 0.99,
            //  color: Colors.yellowAccent,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.10,
                  width: MediaQuery.of(context).size.width * 0.40,
                  color: Colors.white,
                  child: Stack(
                    children: [
                      Positioned(
                        height: MediaQuery.of(context).size.height * 0.20,
                        width: MediaQuery.of(context).size.width * 0.40,
                        child: Container(
                          child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_2d7o8IANjFcL1R6nNN2p3D51LR-rWfgBLTPp0tmPh78O-O4VODGWntmNhhxghzuQFnw&usqp=CAU',
                          ),
                        ),
                      ),
                      Positioned(
                        top: 180,
                        left: 26,
                        height: 50,
                        width: 220,
                        child: Text('هدفون بی سیم راک '),
                      ),
                      Positioned(
                        top: 250,
                        right: 10,
                        width: MediaQuery.of(context).size.width * 0.13,
                        height: MediaQuery.of(context).size.height * 0.03,
                        child: Container(
                          padding: EdgeInsets.only(left: 14, top: 3),
                          child: Text(
                            '63%',
                            style: TextStyle(color: Colors.white),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(70.0),
                          ),
                        ),
                      ),
                      Positioned(
                          top: 255,
                          left: 20,
                          height: MediaQuery.of(context).size.height * 0.10,
                          width: MediaQuery.of(context).size.width * 0.30,
                          child: Text(
                            '990,000',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          )),
                      Positioned(
                          top: 230,
                          left: 10,
                          height: MediaQuery.of(context).size.height * 0.10,
                          width: MediaQuery.of(context).size.width * 0.20,
                          child: Text(
                            'تومان',
                            style: TextStyle(fontWeight: FontWeight.w800),
                          )),
                      Positioned(
                          top: 285,
                          left: 50,
                          height: MediaQuery.of(context).size.height * 0.10,
                          width: MediaQuery.of(context).size.width * 0.30,
                          child: Text(
                            '2,700,000',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          )),
                      Positioned(
                          top: 294,
                          left: 50,
                          height: 1,
                          width: 56,
                          child: Container(
                            color: Colors.grey,
                          )),
                      Positioned(
                          top: 385,
                          left: 15,
                          height: MediaQuery.of(context).size.height * 0.10,
                          width: MediaQuery.of(context).size.width * 0.30,
                          child: Text(
                            '20:45:06',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[400]),
                          )),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 1,
                  color: Colors.grey[400],
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.10,
                  width: MediaQuery.of(context).size.width * 0.40,
                  color: Colors.white,
                ),
                Container(
                  height: 100,
                  width: 1,
                  color: Colors.grey[400],
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.10,
                  width: MediaQuery.of(context).size.width * 0.40,
                  color: Colors.white,
                ),
                Container(
                  height: 100,
                  width: 1,
                  color: Colors.grey[400],
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.10,
                  width: MediaQuery.of(context).size.width * 0.40,
                  color: Colors.white,
                ),
                Container(
                  height: 100,
                  width: 1,
                  color: Colors.grey[400],
                )
              ],
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height * 0.10,
              width: MediaQuery.of(context).size.width * 0.99,
              //  color: Colors.pinkAccent,
              child: Stack(children: [
                Positioned(
                    top: 20,
                    left: 205,
                    height: 40,
                    width: 200,
                    child: Text(
                      'فروش های اخیر در دیجی کالا',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                    )),
              ])),
              Container(
                height: MediaQuery.of(context).size.height*0.40,
                width: MediaQuery.of(context).size.width*0.99,
                color: Colors.purple,
                child: Stack(children: [
                  Positioned(
                    top: 10,
                    left: 300,
                    child:Container(
                      child: Image.network('https://dkstatics-public.digikala.com/digikala-products/111399466.jpg?x-oss-process=image/resize,h_1600/quality,q_80'),
                    height: 100,
                    width: 100,
                    //color: Colors.pinkAccent,
                  ) ,

                  ),
                  Positioned(
                    left: 250,
                    top: 30,
                    child: Text('1',style: TextStyle(color: Colors.blue,fontSize: 40),)),
                 
                ],),
              )
        ])));
  }
}
=======
>>>>>>> f469baf88dda441189ec9638ebe9a586c5f53fd0
