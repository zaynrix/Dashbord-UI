import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:wireframe/centerdetails.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("الرئيسية"),
        centerTitle: true,
        elevation: .1,
        backgroundColor: Color.fromRGBO(49, 87, 110, 1.0),
        actions: <Widget>[
          new Stack(
            children: <Widget>[
              new IconButton(
                  icon: Icon(Icons.notifications),
                  onPressed: () {
                    setState(() {
                      counter = 0;

                    });
                  }),
              counter != 0
                  ? new Positioned(
                      right: 11,
                      top: 11,
                      child: new Container(
                        padding: EdgeInsets.all(2),
                        decoration: new BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        constraints: BoxConstraints(
                          minWidth: 14,
                          minHeight: 14,
                        ),
                        child: Text(
                          '$counter',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  : new Positioned(
                right: 11,
                top: 11,
                child: new Container(
                  padding: EdgeInsets.all(2),
                  decoration: new BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 13,
                    minHeight: 13,
                  ),

                ),
              )
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Increment Counter");
          setState(() {
            counter++;
          });
        },
        child: Icon(Icons.add),
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text("Yahya Abu Nada"),
              accountEmail: Text("zayns19194@gmail.com"),
              currentAccountPicture: GestureDetector(
                onTap: () {},
                child: new CircleAvatar(
                  backgroundImage: AssetImage("images/yahya.jpg"),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.grey,
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Home Page"),
                leading: Icon(
                  Icons.home,
                  color: Colors.black12,
                ),
              ),
            ),
            InkWell(
              onTap: () => debugPrint("My Account"),
              child: ListTile(
                title: Text("My Account"),
                leading: Icon(
                  Icons.person,
                  color: Colors.black12,
                ),
              ),
            ),
            InkWell(
              onTap: () => debugPrint("My Orders"),
              child: ListTile(
                title: Text("My Orders"),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.black12,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Shopping cart"),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.black12,
                ),
              ),
            ),
            InkWell(
              onTap: () => debugPrint("Favorite"),
              child: ListTile(
                title: Text("Favorite"),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.black12,
                ),
              ),
            ),
            Divider(
              color: Colors.black,
              indent: 10.0,
              endIndent: 58.0,
            ),
            InkWell(
              onTap: () => debugPrint("Setting"),
              child: ListTile(
                title: Text("Favorite"),
                leading: Icon(
                  Icons.settings,
                  color: Colors.black12,
                ),
              ),
            ),
            InkWell(
              onTap: () => debugPrint("Help"),
              child: ListTile(
                title: Text("Help"),
                leading: Icon(
                  Icons.help,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(3.0),
          children: <Widget>[
         Mymenu("إدارة الدورات", Icons.domain,Colors.brown),
            Mymenu("إدارة المراكز", Icons.home,Colors.blue),
            Mymenu("إدارة الحفاظ", Icons.school,Colors.blueGrey),
            Mymenu("إدارة الحلقات", Icons.pages,Colors.red),
            Mymenu("إدارة المستخدمين", Icons.group,Colors.teal),
            Mymenu("إدارة المحفظون", Icons.account_box,Colors.grey),
            Mymenu("التقارير", Icons.description,Colors.green),
          ],
        ),
      ),
    );
  }
}





class Mymenu extends StatelessWidget {

  final String title;


  final IconData icon;
  final MaterialColor color;


  Mymenu(this.title, this.icon, this.color);


  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 1.0,
        margin: new EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(220, 220, 220, 1.0)),
          child: new InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new centerdetails(
                    title,icon
                ))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                SizedBox(height: 50.0),
                Center(
                    child: Icon(
                  icon,
                  size: 55.0,
                      color: color,

                )),
                SizedBox(height: 20.0),
                new Center(
                  child: new Text(title,
                      style:
                          new TextStyle(fontSize: 18.0, color: Colors.black)),
                )
              ],
            ),
          ),
        ));
  }
}
