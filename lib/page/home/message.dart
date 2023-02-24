import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => new _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('通知中心'),
          backgroundColor: Color(0xffffffff),
          elevation: 0,
          actions: <Widget>[
            GestureDetector(
              onTap: (){
                Fluttertoast.showToast(
                    msg: "咦，还没有任何消息~",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Color(0xffe7e7e7),
                    textColor: Colors.black,
                    fontSize: 16.0
                );
                },
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 16, 20, 12),
                child: Container(
                  width: 26,
                  height: 20,
                  decoration: BoxDecoration(
                    image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/icon/edit.png"),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Container(
          color: Color(0xfff7f6fb),
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 200,
                    height: 170,
                    decoration: BoxDecoration(
                      image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/icon/tu2.png"),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: Text("咦，还没有任何消息~",
                      style: TextStyle(color: Color(0xffb8b9be),fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
        ),
      );
  }
}


