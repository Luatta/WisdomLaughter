import 'package:flutter/material.dart';
import 'package:flutter_app/page/me/setting.dart';

class MePage extends StatefulWidget {
  @override
  _MePageState createState() => new _MePageState();
}

class _MePageState extends State<MePage> {
  @override
  Widget build(BuildContext context) {
    double itemWidth = MediaQuery.of(context).size.width;
    double itemHeight = MediaQuery.of(context).size.height;
    double topPadding = MediaQuery.of(context).padding.top;
    return  Container(
      color: Color(0xfff2f2f2),
      child: Container(
        width: itemWidth,
        height: itemHeight,
        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
        decoration: BoxDecoration(
          image: new DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/img/mebg.png"),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return SettingPage();
                }));
                },
              child: Container(
                margin: EdgeInsets.fromLTRB(0,topPadding + 20, 0, 0),
                width: itemWidth,
                color: Color(0xff319dff),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        width: itemWidth-40,
                        margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage("assets/images/img/tx.png"),
                                  ),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
                                  child: Text('张三',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white
                                    ),
                                  )
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(180, 3, 0, 0),
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage("assets/images/icon/kuai.png"),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(18, 3, 0, 0),
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage("assets/images/icon/pen.png"),
                                  ),
                                ),
                              ),
                            ]
                        )
                    ),
                  ],
                ),
              ),
            ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('0.00',style: TextStyle(fontSize: 26,color: Colors.white),),
                        Text('余额',style: TextStyle(fontSize: 15,color: Colors.white),),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('0',style: TextStyle(fontSize: 26,color: Colors.white),),
                        Text('卡卷',style: TextStyle(fontSize: 15,color: Colors.white),),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                width: itemWidth-40,
                height: 68,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image:new DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/img/whitebg.png"),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 8, 0, 3),
                          width: 26,
                          height: 26,
                          decoration: BoxDecoration(
                            image:new DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/images/icon/wallet.png"),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text('钱包',style: TextStyle(fontSize: 15,color: Colors.black),),),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 8, 0, 3),
                          width: 26,
                          height: 26,
                          decoration: BoxDecoration(
                            image:new DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/images/icon/bill.png"),
                            ),
                          ),
                        ),
                        Text('账单明细',style: TextStyle(fontSize: 15,color: Colors.black),),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 8, 0, 3),
                          width: 26,
                          height: 26,
                          decoration: BoxDecoration(
                            image:new DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/images/icon/act.png"),
                            ),
                          ),
                        ),
                        Text('活动中心',style: TextStyle(fontSize: 15,color: Colors.black),),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 8, 0, 3),
                          width: 26,
                          height: 26,
                          decoration: BoxDecoration(
                            image:new DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/images/icon/dollor.png"),
                            ),
                          ),
                        ),
                        Text('余额退款',style: TextStyle(fontSize: 15,color: Colors.black),),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 15, 0, 0),
                width: itemWidth-40,
                height: 208,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image:new DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/img/whitebg.png"),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image:new DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/images/icon/lock.png"),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text('安全设置',
                            style: TextStyle(color: Colors.black,fontSize: 18),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(200, 4, 0, 0),
                          width: 14,
                          height: 14,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image:new DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/images/icon/arrowright.png"),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image:new DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/images/icon/about.png"),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text('关于笑联',
                            style: TextStyle(color: Colors.black,fontSize: 18),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text('智慧笑联V1.2.28',
                            style: TextStyle(color: Color(0xffb8b9be),fontSize: 14),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(86, 4, 0, 0),
                          width: 14,
                          height: 14,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image:new DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/images/icon/arrowright.png"),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image:new DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/images/icon/more.png"),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text('更多',
                            style: TextStyle(color: Colors.black,fontSize: 18),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(235, 4, 0, 0),
                          width: 14,
                          height: 14,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image:new DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/images/icon/arrowright.png"),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image:new DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/images/icon/clear.png"),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text('清除缓存',
                            style: TextStyle(color: Colors.black,fontSize: 18),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(200, 4, 0, 0),
                          width: 14,
                          height: 14,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image:new DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/images/icon/arrowright.png"),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ),
            ]
        ),
      ),
    );
  }
}