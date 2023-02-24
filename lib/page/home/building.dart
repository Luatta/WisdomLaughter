import 'package:flutter/material.dart';
import 'package:flutter_app/page/home/washindex.dart';

class BuildingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new ListState();
}


class ListState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar:  AppBar(
            title: Text('选择楼栋'),
            backgroundColor: Color(0xfffffff),
            elevation: 0,
          ),
          body: ListView.builder(itemCount: 15, itemBuilder: buildItem)
    );
  }

  List titles = [
    "西和1幢","西和2幢","西和3幢","西和4幢","西和5幢",
    "西和6幢","西和7幢","西和8幢","西和9幢","西和10幢",
    "西和11幢","西和12幢","西和13幢","西和14幢","西和15幢",
  ];

  Widget buildItem(BuildContext context, int index) {
    double itemWidth = MediaQuery.of(context).size.width;
    TextStyle textStyle = TextStyle(fontSize: 16.0);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => WashIndexPage(titles[index])));
          },
          child: Container(
            width: itemWidth,
            child: Padding(
                padding: EdgeInsets.fromLTRB(24, 20, 0, 20),
                child: Text(titles[index], style: textStyle)
            ),
          ),
        ),
        Container(
          color: Color(0xffc3c3c3),
          height: 0.2,
          width: itemWidth-48,
          margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
        ),
      ],
    );
  }
}
