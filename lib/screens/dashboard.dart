import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class User {
  final String name;
  final String description;

  User(this.name, this.description);

  static List<User> userData = [
    User("micheal", "micheal limited"),
    User("uknme", "pro@coder"),
    User("daniel", "daniel depressed"),
    User("leon", "great@coder"),
    User("katty", "musican@brand"),
    User("cena", "john cena"),
    User("jerry", "jerry transaction"),
    User("jackma", "business@man"),
    User("mikal", "mikal limited"),
    User("johnson", "john mafia"),
    User("alecBenjamin", "Dj@music"),
    User("david", "highpass."),
    User("yousif", "worker."),
  ];
  static List<User> userDataRequest = [
    User("jerry", "jerry transaction"),
    User("mikal", "mikal limited"),
    User("johnson", "john mafia"),
    User("micheal", "micheal limited"),
    User("daniel", "daniel depressed"),
    User("leon", "great@coder"),
    User("cena", "john cena"),
    User("katty", "musican@brand"),
  ];
}

class DashboardWeb extends StatefulWidget {
  const DashboardWeb({Key key}) : super(key: key);

  @override
  _DashboardWebState createState() => _DashboardWebState();
}

class _DashboardWebState extends State<DashboardWeb> {

  int _pageController=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: _leftSideWidget(),
          ),
          Expanded(
            flex: 3,
            child: _centerWidget(),
          ),
          Expanded(
            flex: 1,
            child: _rightSideWidget(),
          ),
        ],
      ),
    );
  }

  _rightSideWidget() {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 12),
            child: Text(
              "All Users",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Divider(),
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: User.userData.length,
                itemBuilder: (context, index) {
                  return listViewItem(index);
                }),
          )
        ],
      ),
    );
  }

  _centerWidget() {
    return Container(
      decoration: BoxDecoration(color: Colors.grey[200]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 3.0),
            width: 813,
            height: 63,
            decoration: BoxDecoration(color: Colors.white, border: Border(bottom: BorderSide(color: Colors.deepOrange, width: 1))),
            child: Center(
              child: Text(
                "Ferber Transaction",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 15.0),
                  height: 200,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20.0, top: 20.0),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(color: Colors.deepPurple, borderRadius: BorderRadius.circular(15.0), boxShadow: [
                          BoxShadow(color: Colors.deepPurple[800], offset: Offset(2, 2), blurRadius: 15.0, spreadRadius: 0.7),
                          BoxShadow(color: Colors.white, offset: Offset(-1, -1), blurRadius: 15.0, spreadRadius: 0.7),
                        ]),
                        child: Center(
                          child: Icon(
                            Icons.account_circle_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "1,341",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Total Users",
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 15.0, right: 15.0),
                  height: 200,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20.0, top: 20.0),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(color: Colors.deepOrange, borderRadius: BorderRadius.circular(15.0), boxShadow: [
                          BoxShadow(color: Colors.deepOrange[800], offset: Offset(2, 2), blurRadius: 15.0, spreadRadius: 0.7),
                          BoxShadow(color: Colors.white, offset: Offset(-1, -1), blurRadius: 15.0, spreadRadius: 0.7),
                        ]),
                        child: Center(
                          child: Icon(
                            Icons.adjust_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "1,215",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Total Transaction",
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15.0), boxShadow: [
                BoxShadow(color: Colors.black.withOpacity(.1), offset: Offset(2, 2), blurRadius: 15.0, spreadRadius: 0.7),
                BoxShadow(color: Colors.white, offset: Offset(-1, -1), blurRadius: 15.0, spreadRadius: 0.7),
              ]),
              child: ListView.builder(
                  itemCount: User.userDataRequest.length,
                  itemBuilder: (context, index) {
                    return listViewItemRequest(index);
                  }),
            ),
          )
        ],
      ),
    );
  }

  _leftSideWidget() {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15),
                width: 45,
                height: 45,
                decoration: BoxDecoration(color: Colors.deepOrange, shape: BoxShape.circle,),
              ),
              SizedBox(width: 10,),
              Text(
                "Ferber",
                style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
          Divider(),
          SizedBox(
            height: 20.0,
          ),
          navBarItem(Icons.dashboard, "Home", _pageController==0?Colors.deepOrange:Colors.white, _pageController==0?Colors.white:Colors.grey,onTap: (){
            setState(() {
              _pageController=0;
            });
          }),
          SizedBox(
            height: 20.0,
          ),
          navBarItem(Icons.chat_rounded, "Chat", _pageController==1?Colors.deepOrange:Colors.white, _pageController==1?Colors.white:Colors.grey,onTap: (){
            setState(() {
              _pageController=1;
            });
          }),
          SizedBox(
            height: 20.0,
          ),
          navBarItem(Icons.settings, "Settings",_pageController==2?Colors.deepOrange:Colors.white, _pageController==2?Colors.white:Colors.grey,onTap: (){
            setState(() {
              _pageController=2;
            });
          }),
        ],
      ),
    );
  }

  Widget navBarItem(IconData icon, String text, Color color, Color textColor,{VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
           width: MediaQuery.of(context).size.width/6,
            height: 50,
            decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(40.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                  child: Icon(
                    icon,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "${text}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: textColor),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget listViewItemRequest(int index) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10.0),
                width: 50,
                height: 50,
                decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${User.userDataRequest[index].name}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    "${User.userDataRequest[index].description}",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: 15.0,
                  )
                ],
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 60,
                height: 25,
                decoration: BoxDecoration(
                  color: Colors.blue[800],
                  borderRadius: BorderRadius.circular(5.0)
                ),
                child: Center(
                  child: Text("Accept", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                width: 60,
                height: 25,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(5.0)
                ),
                child: Center(
                  child: Text("Decline", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget listViewItem(int index) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10.0),
          width: 40,
          height: 40,
          decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
        ),
        SizedBox(
          width: 10.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${User.userData[index].name}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            Text(
              "${User.userData[index].description}",
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 15.0,
            )
          ],
        ),
      ],
    );
  }
}
