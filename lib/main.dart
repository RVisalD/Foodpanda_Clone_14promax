// ignore_for_file: sized_box_for_whitespace, sort_child_properties_last, prefer_const_constructors, avoid_unnecessary_containers, unnecessary_new

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:flutterapp/icon.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.black45),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String Location = "Home";
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: AppBar(
        title: new Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 50, 0, 50),
            child: new Text(Location)),
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu),
            iconSize: 30,
            padding: EdgeInsets.only(left: 20),
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FavResPage()),
              );
            },
            icon: Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 50),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_bag_outlined, color: Colors.white),
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 50),
          ),
        ],
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
              child: Row(
                children: [
                  Expanded(
                    child: CupertinoTextField(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      placeholder: 'Search For Shops & Restaurants',
                      prefix: Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Icon(
                          Icons.search,
                          color: Color(0xff7b7b7b),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            )),
        toolbarHeight: 60,
        backgroundColor: Color(0xFFD60265),
        elevation: 10,
        titleSpacing: 12,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
                child: Text(
                  "Ratanakvisal Duong",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                padding: EdgeInsets.only(left: 20, top: 30, bottom: 15),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1, color: Color(0xFFd3d3d3)),
                  ),
                )),
            Container(
              padding: EdgeInsets.only(top: 30, left: 20),
              child: Row(
                children: [
                  Container(
                    child: Image.asset('images/PRO.png'),
                    width: 40,
                    height: 20,
                  ),
                  Container(
                    child: Text(
                      "Become a pandapro",
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30, left: 10),
              child: Row(
                children: [
                  Container(
                    child: Icon(Icons.receipt_long_outlined,
                        color: Color(0xFFD60265)),
                    width: 50,
                    height: 20,
                  ),
                  Container(
                    child: Text(
                      "Orders & reordering",
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30, left: 10),
              child: Row(
                children: [
                  Container(
                    child: Icon(Icons.account_circle_outlined,
                        color: Color(0xFFD60265)),
                    width: 50,
                    height: 20,
                  ),
                  Container(
                    child: Text(
                      "Profile",
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30, left: 10),
              child: Row(
                children: [
                  Container(
                    child: Icon(Icons.location_on_outlined,
                        color: Color(0xFFD60265)),
                    width: 50,
                    height: 20,
                  ),
                  Container(
                    child: Text(
                      "Addresses",
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30, left: 10),
              child: Row(
                children: [
                  Container(
                    child: Icon(Icons.credit_card_outlined,
                        color: Color(0xFFD60265)),
                    width: 50,
                    height: 20,
                  ),
                  Container(
                    child: Text(
                      "Payment methods",
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30, left: 10),
              child: Row(
                children: [
                  Container(
                    child: Icon(MyFlutterApp.award, color: Color(0xFFD60265)),
                    width: 50,
                    height: 20,
                  ),
                  Container(
                    child: Text(
                      "panda rewards",
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30, left: 10),
              child: Row(
                children: [
                  Container(
                    child: Icon(MyFlutterApp.ticket, color: Color(0xFFD60265)),
                    width: 50,
                    height: 20,
                  ),
                  Container(
                    child: Text(
                      "Vouchers",
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30, left: 10),
              child: Row(
                children: [
                  Container(
                    child: Icon(MyFlutterApp.question_circle_o,
                        color: Color(0xFFD60265)),
                    width: 50,
                    height: 20,
                  ),
                  Container(
                    child: Text(
                      "Help center",
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30, left: 10),
              child: Row(
                children: [
                  Container(
                    child: Icon(MyFlutterApp.gift, color: Color(0xFFD60265)),
                    width: 50,
                    height: 20,
                  ),
                  Container(
                    child: Text(
                      "Invite friends",
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30, left: 10),
              child: Row(
                children: [
                  Container(
                    child:
                        Icon(Icons.settings_outlined, color: Color(0xFFD60265)),
                    width: 50,
                    height: 20,
                  ),
                  Container(
                    child: Text(
                      "Settings",
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30, left: 10, bottom: 60),
              child: Row(
                children: [
                  Container(
                    child: Icon(Icons.more_horiz_outlined,
                        color: Color(0xFFD60265)),
                    width: 50,
                    height: 20,
                  ),
                  Container(
                    child: Text(
                      "More",
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 1, color: Color(0xFFd3d3d3)),
                ),
              ),
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Row(
                children: [
                  Container(
                    child:
                        Icon(Icons.logout_outlined, color: Color(0xFFD60265)),
                    width: 50,
                    height: 20,
                  ),
                  Container(
                    child: Text(
                      "Log out",
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 25, top: 15),
                      width: 383,
                      height: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Text("Food Delivery",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.start),
                                  padding: EdgeInsets.only(left: 20, top: 10),
                                ),
                                Container(
                                  child: Text("Order food you love"),
                                  padding: EdgeInsets.only(right: 20, top: 5),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(children: [
                              Container(
                                child: Image.asset('images/foodpanda.png'),
                                height: 110,
                                padding: EdgeInsets.only(left: 220),
                              )
                            ]),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // Second Row
                child: Row(
                  children: [
                    Container(
                      height: 280,
                      width: 185,
                      margin: EdgeInsets.only(top: 15, left: 25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            child: Text(
                              "Shop",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            padding: EdgeInsets.only(top: 10, right: 80),
                          ),
                          Container(
                            child: Text(
                              "Groceries and more",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            padding: EdgeInsets.only(top: 5, right: 15),
                          ),
                          Container(
                            child: Column(children: [
                              Container(
                                child: Image.asset('images/bag.png'),
                                height: 215,
                                width: 150,
                                padding: EdgeInsets.only(top: 30, left: 30),
                              )
                            ]),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15, top: 15),
                      child: Column(children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              color: Colors.white),
                          width: 185,
                          height: 135,
                          child: Column(
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        "pandamart",
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      padding:
                                          EdgeInsets.only(right: 3, top: 10),
                                    ),
                                    Container(
                                      child:
                                          Text('Fast delivery, up to 40% off'),
                                      margin:
                                          EdgeInsets.only(right: 40, top: 5),
                                      width: 100,
                                    )
                                  ],
                                ),
                              ),
                              Container()
                            ],
                          ),
                        ),
                        Container(
                          width: 185,
                          height: 135,
                          margin: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              color: Colors.white),
                          child: Column(children: [
                            Container(
                              child: Text(
                                "Pick-Up",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              padding: EdgeInsets.only(top: 10, right: 40),
                            ),
                            Container(
                              child: Image.asset('images/pickup.png'),
                              height: 95,
                              padding: EdgeInsets.only(left: 80, top: 10),
                            )
                          ]),
                        ),
                      ]),
                    )
                  ],
                ),
              ),
              Container(
                // third shop
                child: Column(children: [
                  Container(
                      height: 500,
                      margin: EdgeInsets.only(top: 10),
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Container(
                            child: Text("Your Restaurants",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            margin: EdgeInsets.only(right: 200, top: 10),
                          ),
                          Container(  // scroll by in row
                            margin: EdgeInsets.only(top: 10),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Container(  // first shop
                                    width: 300,
                                    height: 456,
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 30),
                                          child: Column(
                                            children: [
                                              Container(
                                                child: Image.asset(
                                                    'images/SB.jpeg'),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(16)),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  "Starbucks (Chip Mong Sen Sok)",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15),
                                                ),
                                                alignment: new FractionalOffset(
                                                    0.0, 1.0),
                                                padding:
                                                    EdgeInsets.only(top: 5),
                                              ),
                                              Container(
                                                child: Text(
                                                    '\$\$\$ Beverages, Bubble Tea, Tea'),
                                                padding:
                                                    EdgeInsets.only(top: 5),
                                                alignment: new FractionalOffset(
                                                    0.0, 1.0),
                                              ),
                                              Container(
                                                child: Text(
                                                    "\$ 1.00 delivery fee"),
                                                padding:
                                                    EdgeInsets.only(top: 5),
                                                alignment: new FractionalOffset(
                                                    0.0, 1.0),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(  // second shop
                                    // second shop
                                    width: 300,
                                    height: 456,
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 30),
                                          child: Column(
                                            children: [
                                              Container(
                                                child: Image.asset(
                                                    'images/koi.jpeg'),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(16)),
                                                ),
                                              ),
                                              Container(
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                          top: 5),
                                                      alignment:
                                                          new FractionalOffset(
                                                              0.0, 1.0),
                                                      child: Text(
                                                        "KOI The (Toul Kork)",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 15),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                          '\$\$\$ Beverages, Bubble Tea, Tea'),
                                                      alignment:
                                                          new FractionalOffset(
                                                              0.0, 1.0),
                                                      padding: EdgeInsets.only(
                                                          top: 5),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                          "\$ 1.00 delivery fee"),
                                                      padding: EdgeInsets.only(
                                                          top: 5),
                                                      alignment:
                                                          new FractionalOffset(
                                                              0.0, 1.0),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(  // third shop
                                    width: 300,
                                    height: 456,
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 30),
                                          child: Column(
                                            children: [
                                              Container(
                                                child: Image.asset(
                                                    'images/mb.jpeg'),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(16)),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  "Mike's Burger House (St 2004)",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15),
                                                ),
                                                padding:
                                                    EdgeInsets.only(top: 5),
                                                alignment: new FractionalOffset(
                                                    0.0, 1.0),
                                              ),
                                              Container(
                                                child: Text(
                                                    '\$\$\$ Western, Fast Food'),
                                                padding:
                                                    EdgeInsets.only(top: 5),
                                                alignment: new FractionalOffset(
                                                    0.0, 1.0),
                                              ),
                                              Container(
                                                child: Text(
                                                    "\$ 1.00 delivery fee"),
                                                padding:
                                                    EdgeInsets.only(top: 5),
                                                alignment: new FractionalOffset(
                                                    0.0, 1.0),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ))
                ]),
              )
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xFFd3d3d3),
    );
  }
}

class FavResPage extends StatelessWidget {
  const FavResPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
            icon: Icon(Icons.arrow_back, color: Color(0xFFD60265)),
            padding: EdgeInsets.only(bottom: 30, left: 20)),
        title: new Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 60, 180, 80),
            child: new Text("Favorites",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold))),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_bag_outlined, color: Color(0xFFD60265)),
              padding: EdgeInsets.only(right: 20, bottom: 35))
        ],
        bottom: PreferredSize(
            child: Row(
              children: [
                Container(
                  child: TextButton(
                    child: Text("Restaurants",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xFFD60265))),
                    onPressed: () {},
                  ),
                  alignment: Alignment.center,
                  width: (MediaQuery.of(context).size.width) / 2,
                ),
                Container(
                  child: TextButton(
                    child: Text("Shops",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black,
                        )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FavShopPage()),
                      );
                    },
                  ),
                  alignment: Alignment.center,
                  width: (MediaQuery.of(context).size.width) / 2,
                ),
              ],
            ),
            preferredSize: Size.fromHeight(0)),
        toolbarHeight: 90,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [Container()],
      ),
    );
  }
}

class FavShopPage extends StatelessWidget {
  const FavShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
            icon: Icon(Icons.arrow_back, color: Color(0xFFD60265)),
            padding: EdgeInsets.only(bottom: 30, left: 20)),
        title: new Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 60, 180, 80),
            child: new Text("Favorites",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold))),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_bag_outlined, color: Color(0xFFD60265)),
              padding: EdgeInsets.only(right: 20, bottom: 35))
        ],
        bottom: PreferredSize(
            child: Row(
              children: [
                Container(
                  child: TextButton(
                    child: Text("Restaurants",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FavResPage()),
                      );
                    },
                  ),
                  alignment: Alignment.center,
                  width: (MediaQuery.of(context).size.width) / 2,
                ),
                Container(
                  child: TextButton(
                    child: Text("Shops",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xFFD60265))),
                    onPressed: () {},
                  ),
                  alignment: Alignment.center,
                  width: (MediaQuery.of(context).size.width) / 2,
                ),
              ],
            ),
            preferredSize: Size.fromHeight(0)),
        toolbarHeight: 90,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [Container()],
      ),
    );
  }
}
