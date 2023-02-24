import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/page/home/washindex.dart';
import 'package:flutter_app/page/home/message.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double itemWidth = MediaQuery.of(context).size.width;
    double itemHeight = MediaQuery.of(context).size.height;
    double topPadding = MediaQuery.of(context).padding.top;
    return Center(
      child: Container(
        width: itemWidth,
        height: itemHeight,
        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
          decoration: BoxDecoration(
            image: new DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/img/bg.png"),
          ),
          ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0,topPadding + 10, 0, 0),
              width: itemWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    width: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                            child:Icon(
                              Icons.cloud_queue,
                              color: Colors.white,
                              size: 38,
                            )
                        ),
                        Container(
                          height: 45,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                  child: Text('7℃',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white
                                    ),
                                  )
                              ),
                              Container(
                                  child: Text('浙江科技学院',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white
                                    ),
                                  )
                              )
                            ]
                          )
                        )
                      ],
                    ),
                  ),
                  Container(
                      child: IconButton(
                          icon: Icon(Icons.notifications_none),
                          iconSize: 35,
                          color: Colors.white,
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_) {
                              return MessagePage();
                            }));
                          }
                      )
                  ),
                ],
              ),
            ),
            firstSwiperView(),
            Container(
              margin: EdgeInsets.fromLTRB(20, 40, 0, 18),
              child: Text('生活服务',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return WashIndexPage('请选择楼栋');
                    }));
                  },
                  child: Container(
                    width: (itemWidth-80)/3,
                    height: 140.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/img/cloth.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 70.0,
                          height: 70.0,
                        ),
                        Container(
                          child: Text('洗衣机',
                            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500,color: Colors.white),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Text('HAIER WASHI...',
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: (itemWidth-80)/3,
                  height: 140.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/img/shoe.png"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 70.0,
                        height: 70.0,
                      ),
                      Container(
                        child: Text('洗鞋机',
                          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500,color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Text('SHOW WASHING',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Colors.white),
                        ),
                      ),
                    ],
                ),
                ),
                Container(
                  width: (itemWidth-80)/3,
                  height: 140.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/img/dry.png"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 70.0,
                        height: 70.0,
                      ),
                      Container(
                        child: Text('烘干机',
                          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500,color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Text('DRTER',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Center(
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Text('数媒203 1200651257 卢柯诗',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xffb8b9be)),
                )
              )
            )
          ],
        )
      ),
    );
  }

  List<String> imgs = [
    "assets/images/img/cloth1.png",
    "assets/images/img/shoe1.png",
    "assets/images/img/dry1.png",
  ];

  //轮播图
  Widget firstSwiperView() {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 5, 20, 0),
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      width: MediaQuery.of(context).size.width,
      height: 150,
      child: Swiper(
        itemCount: 3,
        itemBuilder: (BuildContext context,int index){
          return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: new AssetImage(imgs[index]),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              )
          );
        },
        pagination: SwiperPagination(
          alignment: Alignment.bottomCenter,
          margin: const EdgeInsets.fromLTRB(0, 0, 15, 10),
          builder: DotSwiperPaginationBuilder(
            size: 8.0,
            activeSize: 8.0,
            color: Colors.white,
            activeColor: Colors.amberAccent
          ),
        ),
        controller: SwiperController(),
        scrollDirection: Axis.horizontal,
        autoplay: true,
        //是否自动播放
        onTap: (index) => print('您点击了第$index'),
      ),
    );
  }
}