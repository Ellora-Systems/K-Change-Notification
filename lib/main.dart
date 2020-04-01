import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'cart.dart';

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
  bool isNew = true;

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset('assets/notification_top_bar.png',
                  fit: BoxFit.fill),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  height: 140.0,
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CartMain()));
                          },
                          splashColor: Colors.grey,
                          child: Container(
                            width: 80,
                            margin: EdgeInsets.only(top: 25, left: 10),
                            child: Icon(Icons.arrow_back,
                                size: 35, color: Color(0xFF201e20)),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.only(top: 25),
                          child: Text(
                            "Notification",
                            style: TextStyle(
                                fontSize: 25,
                                color: Color(0xFF4a4424),
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
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
                        Container(
                          alignment: AlignmentDirectional.topStart,
                          margin: EdgeInsets.only(
                            top: 32,
                            left: 35,
                            right: 16,
                          ),
                          child: Text(
                            'Notifications',
                            style: TextStyle(
                                color: Color(0xFF2b2b2b),
                                fontSize: 19,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        widget.isNew
                            ? Container(
                                alignment: AlignmentDirectional.topStart,
                                margin: EdgeInsets.only(
                                  top: 15,
                                  left: 35,
                                  right: 16,
                                ),
                                child: Text(
                                  'New',
                                  style: TextStyle(
                                      color: Color(0xFFa5a5a5),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
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
        margin: EdgeInsets.only(
          top: 9,
        ),
        height: 2,
        color: Color(0xFFedeff3),
      ),
      Container(
        height: 100,
        color: Color(0xFFF3F4F5),
        alignment: AlignmentDirectional.centerStart,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 35, top: 6),
                  child: Text(model.title,
                      maxLines: 1,
                      style: TextStyle(
                          color: Color(0xFF2d2f30),
                          fontSize: 19,
                          fontWeight: FontWeight.w500)),
                ),
                Expanded(
                  child: Container(
                    alignment: AlignmentDirectional.centerEnd,
                    margin: EdgeInsets.only(right: 25, top: 6),
                    child: Text(model.date,
                        style: TextStyle(
                            color: Color(0xFF7c7e7f),
                            fontSize: 16,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
                left: 35,
                right: 18,
              ),
              alignment: AlignmentDirectional.topStart,
              child: Text(
                model.message,
                maxLines: 2,
                style: TextStyle(
                  color: Color(0xFF333436),
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        height: 2,
        color: Color(0xFFedeff3),
      )
    ],
  );
}
