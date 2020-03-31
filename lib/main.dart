import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Notifications());

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotificationPage(),
    );
  }
}

class NotificationModel {
  String title;
  String date;
  String message;

  NotificationModel(this.title, this.date, this.message);
}

class NotificationPage extends StatefulWidget {
  List<NotificationModel> noticationModel = getListModel();
  bool isNew = false;

  @override
  State<StatefulWidget> createState() {
    return NotificationState();
  }
}

List<NotificationModel> getListModel() {
  return [
    NotificationModel("Welcome 1", "Mar 1", "message 1"),
    NotificationModel("Welcome 2", "Mar 2", "message 2"),
    NotificationModel("Welcome 3", "Mar 3", "message 3"),
    NotificationModel("Welcome 4", "Mar 4", "message 4")
  ];
}

class NotificationState extends State<NotificationPage> {
  void newShown(bool isWew) {
    setState(() {
      if (widget.isNew) {
        widget.isNew = false;
      } else {
        widget.isNew = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[600],
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              height: 80.0,
              margin: EdgeInsets.only(
                top: 25,
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
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    InkWell(
                        onTap: () {
                          newShown(widget.isNew);
                        },
                        child: Container(
                          alignment: AlignmentDirectional.topStart,
                          margin: EdgeInsets.only(
                            top: 26,
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
                        )),
                    widget.isNew
                        ? Container(
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
                          )
                        : Container(),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.6,
                      child: ListView.builder(
                        itemCount: widget.noticationModel.length,
                        itemBuilder: (context, position) {
                          return listItem(widget.noticationModel[position]);
                        },
                      ),
                    )
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

Widget listItem(NotificationModel model) {
  return Column(
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(top: 9),
        height: 2,
        color: Colors.black26,
      ),
      Container(
        height: 100,
        color: Colors.grey[200],
        alignment: AlignmentDirectional.centerStart,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(model.title,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.bold)),
                ),
                Expanded(
                  child: Container(
                    alignment: AlignmentDirectional.centerEnd,
                    margin: EdgeInsets.only(right: 16),
                    child: Text(
                      model.date,
                      style: TextStyle(color: Colors.black, fontSize: 15),
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
                model.message,
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
        color: Colors.black26,
      )
    ],
  );
}
