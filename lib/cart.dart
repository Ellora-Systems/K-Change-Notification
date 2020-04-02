import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:toast/toast.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CartMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Cart(),
      ),
    );
  }
}

class Cart extends StatefulWidget {
  List<String> assetImagesList = [
    "assets/watch_1.jpg",
    "assets/watch_2.jpg",
    "assets/watch_3.jpg"
  ];

  @override
  _CartState createState() {
    return _CartState();
  }
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.35,
          child: CarouselSlider(
            height: MediaQuery.of(context).size.height * 0.35,
            items: widget.assetImagesList.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.35,
                        child: Image(
                          image: AssetImage(i),
                          fit: BoxFit.cover,
                        ),
                      ));
                },
              );
            }).toList(),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.67,
          margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.33),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(top: 30, left: 35, right: 20),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Watch",
                      maxLines: 1,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color(0xFF221e1f),
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(top: 15),
                    child: Text(
                      "Location Criteria",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color(0xFF201e1f),
                          fontSize: 19,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        size: 28,
                        color: Color(0xFF656565),
                      ),
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.only(top: 9, left: 10),
                            child: Text("A.Vadipatti \n4534 4534 43543 3423",
                                style: TextStyle(
                                    color: Color(0xFF656565),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis)),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 9),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Posted by  ",
                      style: TextStyle(
                          color: Color(0xFF201e1f),
                          fontSize: 19,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 9),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Ulagapandi U",
                      style: TextStyle(
                          color: Color(0xFF656565),
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 9),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Category",
                      style: TextStyle(
                          color: Color(0xFF201e1f),
                          fontSize: 19,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 9),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Fashion and Accessories",
                      style: TextStyle(
                          color: Color(0xFF656565),
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 9),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Condition",
                      style: TextStyle(
                          color: Color(0xFF201e1f),
                          fontSize: 19,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 9),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "New",
                      style: TextStyle(
                          color: Color(0xFF656565),
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 9),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Description",
                      style: TextStyle(
                          color: Color(0xFF201e1f),
                          fontSize: 19,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.only(top: 9),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Fashion and Accessories",
                      style: TextStyle(
                          color: Color(0xFF656565),
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                  )),
                  Container(
                      height: 50,
                      margin: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.height * 0.04),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xFFFFC603)),
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.bottomCenter,
                      child: InkWell(
                        onTap: () {
                          Toast.show("start to chat", context);
                        },
                        splashColor: Colors.grey,
                        child: Center(
                            child: Text(
                          "Start to chat",
                          style: TextStyle(
                            color: Color(0xFF1F1F36),
                            fontSize: 19,
                          ),
                        )),
                      ))
                ],
              )),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
              padding: EdgeInsets.all(30),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 35,
                ),
              )),
        ),
      ],
    );
  }
}
