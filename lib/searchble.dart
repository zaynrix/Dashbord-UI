import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

//      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
      margin: EdgeInsets.only(top: 0.0),
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
          color: Colors.grey.shade300,
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: "بحث",
          hintStyle: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white.withOpacity(0.6),
          ),
          border: InputBorder.none,
          prefixIcon: Icon(
            CupertinoIcons.search,
            color: Colors.black54,
            size: 30.0,

          ),
        ),
      ),

    );
  }
}