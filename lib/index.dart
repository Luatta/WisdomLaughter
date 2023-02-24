import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/page/home/home.dart';
import 'package:flutter_app/page/me/me.dart';
import 'package:flutter_app/page/order.dart';

class IndexDemo extends StatefulWidget {
  IndexDemo({Key key}) : super(key: key);

  @override
  _IndexDemoState createState() => _IndexDemoState();
}

class _IndexDemoState extends State<IndexDemo> {
  int currentIndex;
  final pages = [HomePage(),OrderPage(),'',MePage()];
  List titles = ["首页", "订单", "客服", "我的"];
  List normalImgUrls = [
    "assets/images/icon/home.png",
    "assets/images/icon/order.png",
    "assets/images/icon/kefu.png",
    "assets/images/icon/me.png"
  ];
  List selectedImgUrls = [
    "assets/images/icon/homes.png",
    "assets/images/icon/orders.png",
    "assets/images/icon/kefus.png",
    "assets/images/icon/mes.png"
  ];

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    double itemWidth = MediaQuery.of(context).size.width / 5;
    return new Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: pages[currentIndex],
      floatingActionButton: FloatingActionButton(
        tooltip: "scan",
        elevation: 8,
        child: Image.asset('assets/images/icon/scan.png',width: 30.0,height: 30.0),
        onPressed:(){}
      ),
      //放置中间的缺口处
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        //一个带有圆形缺口的矩形
        shape: CircularNotchedRectangle(),
        child: Row(
            children: <Widget>[
              SizedBox(height: 49, width: itemWidth, child: tabbar(0)),
              SizedBox(height: 49, width: itemWidth, child: tabbar(1)),
              SizedBox(height: 49, width: itemWidth, ),
              SizedBox(height: 49, width: itemWidth, child: tabbar(2)),
              SizedBox(height: 49, width: itemWidth, child: tabbar(3)),

            ]
        ),
      ),
    );
  }

  Widget tabbar(int index) {
    //设置默认未选中的状态
    TextStyle style = TextStyle(fontSize: 12, color: Colors.black, fontWeight:FontWeight.w500 );
    String imgUrl = normalImgUrls[index];
    if (currentIndex == index) {
      //选中的话
      style = TextStyle(fontSize: 12, color: Color(0xff2592e5), fontWeight:FontWeight.w500);
      imgUrl = selectedImgUrls[index];
    }
    //构造返回的Widget
    Widget item = Container(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(imgUrl, width: 20, height: 20),
            Text(
              titles[index],
              style: style,
            )
          ],
        ),
        onTap: () {
          if (currentIndex != index) {
            setState(() {
              currentIndex = index;
            });
          }
        },
      ),
    );
    return item;
  }
}