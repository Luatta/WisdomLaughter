import 'package:flutter/material.dart';
import 'package:flutter_app/index.dart';
import 'package:flutter_app/page/home/washorder.dart';
import 'package:flutter_app/page/home/building.dart';

class WashIndexPage extends StatefulWidget {
  String name;
  WashIndexPage(this.name);
  @override
  _WashIndexPageState createState() => new _WashIndexPageState();
}

class _WashIndexPageState extends State<WashIndexPage> {
  int _currentIndex = 0;
  List<Widget> pages = new List();
  @override
  void initState() {
    super.initState();
    pages
      ..add(WashMachinePage(widget.name))
      ..add(WashOrderPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/icon/machine.png',width: 20, height: 20),
              activeIcon: Image.asset('assets/images/icon/machines.png',width: 20, height: 20),
              title: new Text('洗衣机',)
          ),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/icon/order.png',width: 20, height: 20),
              activeIcon: Image.asset('assets/images/icon/orders.png',width: 20, height: 20),
              title: new Text('洗衣订单',)
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (int i) {
          setState(() {
            _currentIndex = i;
          });
        },
      ),
    );
  }
}



class WashMachinePage extends StatelessWidget {
  String name;
  WashMachinePage(this.name);
  @override
  Widget build(BuildContext context) {
    double itemWidth = MediaQuery.of(context).size.width;
    double itemHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Container(
          margin: EdgeInsets.fromLTRB(3, 0, 0, 0),
          child: Text('洗衣机',style: TextStyle(color: Colors.white,fontSize: 18),),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close ,color: Colors.white,),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return IndexDemo();
                }));
              }
          )
        ],
        backgroundColor: Color(0xff1182ff),
      ),
      body: Center(
          child: Container(
            width: itemWidth,
            height: itemHeight,
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            decoration: BoxDecoration(
              image: new DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/img/bluebg.png"),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  width: itemWidth,
                  child: Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      height: 30,
                      child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_) {
                              return BuildingPage();
                            }));
                          },
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child:Text(name,
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 7, 0, 0),
                                width: 15,
                                height: 15,
                                decoration: BoxDecoration(
                                  image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage("assets/images/icon/arrowdown.png"),
                                  ),
                                ),
                              )
                            ],
                          )
                      )
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  width: itemWidth,
                  child: Container(
                      margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      height: 20,
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                            width: 18,
                            height: 18,
                            decoration: BoxDecoration(
                              image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/images/icon/shop.png"),
                              ),
                            ),
                          ),
                          Container(
                            width: 300,
                            child:Text('服务提供： 浙江尼普顿科技股份有限公司',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                        ],
                      )
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  width: itemWidth,
                  child: Container(
                      margin: EdgeInsets.fromLTRB(20, 6, 0, 0),
                      height: 20,
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                            width: 18,
                            height: 18,
                            decoration: BoxDecoration(
                              image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/images/icon/time.png"),
                              ),
                            ),
                          ),
                          Container(
                            width: 300,
                            child:Text('服务时间： 周一至周日 00:00~23:59',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                        ],
                      )
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                    image:new DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/img/whitebg.png"),
                    ),
                  ),
                  margin: EdgeInsets.fromLTRB(20, 15, 0, 0),
                  width: itemWidth-40,
                  height: itemHeight-239,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 15, 20, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 2, 15, 0),
                              width: 35,
                              height: 40,
                              decoration: BoxDecoration(
                                image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("assets/images/icon/machine1.png"),
                                ),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                height: 45,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                          child: Text('洗衣房【2层】',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black
                                            ),
                                          )
                                      ),
                                      Container(
                                        width: 85,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                                              width: 10,
                                              height: 10,
                                              decoration: BoxDecoration(
                                                image: new DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage("assets/images/icon/dom.png"),
                                                ),
                                              ),
                                            ),
                                            Container(
                                                child: Text('可用设备:0',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w500,
                                                      color: Color(0xffefac00)
                                                  ),
                                                )
                                            ),
                                          ],
                                        ),
                                      )
                                    ]
                                )
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Color(0xffc3c3c3),
                        height: 0.5,
                        width: itemWidth-80,
                        margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
      ),
      floatingActionButton: FloatingActionButton(
          tooltip: "scan",
          elevation: 8,
          child: Image.asset('assets/images/icon/scan.png',width: 30.0,height: 30.0),
          onPressed:(){}
      ),
      //放置中间的缺口处
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
