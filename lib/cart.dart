import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.35,
          child: Image.asset(
            'assets/notification_top_bar.png',
            fit: BoxFit.fitWidth,
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 35,
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.72,
          margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.28),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
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
                      margin: EdgeInsets.only(bottom: 15),
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xFFFFC603)),
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.bottomCenter,
                      child: Center(
                          child: Text(
                        "Start to chat",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xFF1F1F36),
                            fontSize: 19,
                            fontWeight: FontWeight.w600),
                      )))
                ],
              )),
        )
      ],
    );
  }
}
