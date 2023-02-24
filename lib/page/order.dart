import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => new _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text("我的订单"),
            backgroundColor: Color(0xfffdfffe),
            centerTitle: true,
            bottom: TabBar(
              indicatorColor: Color(0xff1182ff),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: <Widget>[
                Tab(child:Text('全部',style: TextStyle(fontSize: 18),)),
                Tab(child:Text('使用中',style: TextStyle(fontSize: 18),)),
                Tab(child:Text('已退单',style: TextStyle(fontSize: 18),)),
              ],
            ),
          ),
          body: Container(
            color: Color(0xfff7f6fb),
            child:TabBarView(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
                  child: DemoPage()),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/icon/tu.png"),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: Text("咦，还没有任何记录~",
                        style: TextStyle(color: Color(0xffb8b9be),fontSize: 16),
                      ),
                    )
                  ],
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/icon/tu.png"),
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
            ],
          ),
          ),
        )
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new DemoPageState();
  }
}

class DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.count(
          crossAxisCount: 1,
          childAspectRatio: 2.12,
          crossAxisSpacing: 0,
          mainAxisSpacing: 18,
          children: _buildGridTitleList(10),
        )
    );
  }

  List titles = [
    "烘干机订单", "洗鞋机订单", "烘干机订单", "洗衣机订单", "洗衣机订单",
    "烘干机订单", "洗衣机订单", "洗衣机订单", "烘干机订单", "洗衣机订单"
  ];

  List time = [
    "2021-12-26 12:48:23", "2021-12-20 13:28:23",
    "2021-12-19 11:23:45", "2021-12-13 12:45:35",
    "2021-12-09 09:35:43", "2021-12-02 19:02:34",
    "2021-11-22 10:23:28", "2021-11-28 10:30:42",
    "2021-11-15 11:53:27", "2021-11-20 20:23:23"
  ];

  List money = [
    '5.00','4.00','4.00','5.00','3.00','4.00','5.00','4.00','4.00','4.00'
  ];

  //创建指定数量的网格
  List<Container> _buildGridTitleList(int count) {
    double itemWidth = MediaQuery.of(context).size.width;
    return List.generate(count, (int index) => Container(
      decoration: BoxDecoration(
        image: new DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/img/whitebg.png"),
        ),
        borderRadius: BorderRadius.circular(15),boxShadow: [
        BoxShadow(
            color: Colors.white60,
            offset: Offset(0.0, 3.0), //阴影xy轴偏移量
            blurRadius: 1.0, //阴影模糊程度
            spreadRadius: 1.0 //阴影扩散程度
        )
      ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                  width: 24,
                  height: 27,
                  margin: EdgeInsets.fromLTRB(20, 21, 22, 0),
                  decoration: BoxDecoration(
                    image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/icon/machine2.png"),
                    ),
                  )
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 130, 0),
                 child: Text(titles[index],style: TextStyle(fontSize: 19),),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Text('已完成',style: TextStyle(fontSize: 14,color: Color(0xffb8b9be)),),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(66, 8, 0, 0),
            child:Text('下单时间：'+time[index],
              style: TextStyle(fontSize: 14,color: Color(0xffb8b9be)),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(66, 8, 0, 0),
            child:Text('金额： ￥ '+money[index],
              style: TextStyle(fontSize: 14,color: Color(0xffb8b9be)),
            ),
          ),
          Container(
            color: Color(0xffc3c3c3),
            height: 0.3,
            width: itemWidth-100,
            margin: EdgeInsets.fromLTRB(20, 15, 0, 0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(20, 10, 220, 0),
                child: Text('查看详情',style: TextStyle(fontSize: 16,color: Color(0xffb8b9be)),),
              ),
              Container(
                  width: 10,
                  height: 12,
                  margin: EdgeInsets.fromLTRB(20, 18, 0, 0),
                  decoration: BoxDecoration(
                    image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/icon/arrowright.png"),
                    ),
                  )
              )
            ],
          )
        ],
      )
    ));
  }
}
