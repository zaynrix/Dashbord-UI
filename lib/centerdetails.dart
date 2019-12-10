import 'package:flutter/material.dart';
import 'package:wireframe/dashboard.dart';
import 'package:wireframe/searchble.dart';
import 'package:search_widget/search_widget.dart';
class centerdetails extends StatefulWidget {
  final center_details_title;
  final center_details_icon;

  centerdetails(this.center_details_title, this.center_details_icon);

  @override
  _centerdetailsState createState() => _centerdetailsState();
}

class _centerdetailsState extends State<centerdetails> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final _searchBar = SearchBar();
    final _firstSection = Container(
      height: screenHeight * 0.35,
      padding: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[_searchBar],
      ),
    );




    return Scaffold(
        appBar: AppBar(
          title: Text(widget.center_details_title),

          centerTitle: true,
          elevation: .1,
          backgroundColor: Color.fromRGBO(49, 87, 110, 1.0),
          actions: <Widget>[

            new Stack(
              children: <Widget>[
                new IconButton(icon: Icon(Icons.notifications), onPressed: () {
                  setState(() {
                    counter = 0;
                  });
                }),
                counter != 0 ? new Positioned(
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
                ) : new Container()
              ],
            ),
          ],
        ),

        body: Container(

            child: Column(
              children: <Widget>[_firstSection],
            ),
        ),



      );
  }
}


