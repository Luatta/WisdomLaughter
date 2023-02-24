import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => new _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    double itemWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('编辑个人信息'),
        backgroundColor: Color(0xfff2f2f2),
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 30, 0, 0),
        width: itemWidth-40,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 22),
                  child: Text('更换头像',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 10, 22),
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/img/txs.png"),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 22),
                        width: 14,
                        height: 14,
                        decoration: BoxDecoration(
                          image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/icon/arrowright.png"),
                          ),
                        ),
                      ),
                    ]
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 22),
                  child: Text('昵称',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 10, 22),
                          child: Text('张三',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xffb8b9be)
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 22),
                          width: 14,
                          height: 14,
                          decoration: BoxDecoration(
                            image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/images/icon/arrowright.png"),
                            ),
                          ),
                        ),
                      ]
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 22),
                  child: Text('性别',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 10, 22),
                          child: Text('男',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xffb8b9be)
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 22),
                          width: 14,
                          height: 14,
                          decoration: BoxDecoration(
                            image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/images/icon/arrowright.png"),
                            ),
                          ),
                        ),
                      ]
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 22),
                  child: Text('学校',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 10, 22),
                          child: Text('浙江科技学院',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xffb8b9be)
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 22),
                          width: 14,
                          height: 14,
                          decoration: BoxDecoration(
                            image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/images/icon/arrowright.png"),
                            ),
                          ),
                        ),
                      ]
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 22),
                  child: Text('校区',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 10, 22),
                          child: Text('浙江科技学院-小和山校区',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xffb8b9be)
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 22),
                          width: 14,
                          height: 14,
                          decoration: BoxDecoration(
                            image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/images/icon/arrowright.png"),
                            ),
                          ),
                        ),
                      ]
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 22),
                  child: Text('宿舍信息',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 10, 20),
                          child: Text('西和8幢2层 209',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xffb8b9be)
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                          width: 14,
                          height: 14,
                          decoration: BoxDecoration(
                            image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/images/icon/arrowright.png"),
                            ),
                          ),
                        ),
                      ]
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}