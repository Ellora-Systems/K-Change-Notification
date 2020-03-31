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

  @override
  State<StatefulWidget> createState() {
    return NotificationState();
  }
}

List<NotificationModel> getListModel() {
  return [
    NotificationModel("title 1", "Mar 1", "message 1"),
    NotificationModel("title 2", "Mar 2", "message 2"),
    NotificationModel("title 3", "Mar 3", "message 3"),
    NotificationModel("title 4", "Mar 4", "message 4")
  ];
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
                      height: MediaQuery.of(context).size.height * 0.8,
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
  return Container(
    margin: EdgeInsets.only(top: 6),
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
                model.title,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
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
  );
}
