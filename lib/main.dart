import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Notifications());

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NotificationPage(),
    );
  }
}

class NotificationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NotificationState();
  }
}

class NotificationState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[700],
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      print("on back pressed");
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black87,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        "Notifications",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      alignment: AlignmentDirectional.topStart,
                      margin: EdgeInsets.only(
                        top: 16,
                        left: 20,
                        right: 16,
                      ),
                      child: Text(
                        'Notifications',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      alignment: AlignmentDirectional.topStart,
                      margin: EdgeInsets.only(
                        top: 15,
                        left: 20,
                        right: 16,
                      ),
                      child: Text(
                        'New',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 15,
                      ),
                      height: 2,
                      color: Colors.grey,
                    ),
                    Container(
                      height: 100,
                      color: Colors.blue[100],
                      alignment: AlignmentDirectional.centerStart,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Text(
                                  "Welcome",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: AlignmentDirectional.centerEnd,
                                  margin: EdgeInsets.only(right: 16),
                                  child: Text(
                                    "Nov 9",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 20,
                              left: 20,
                              right: 18,
                            ),
                            alignment: AlignmentDirectional.topStart,
                            child: Text(
                              "Here you will find important account info, helpful tips, and cool, new Features.",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 2,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
