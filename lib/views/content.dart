import 'package:flutter/material.dart';

Widget cardOfUserTable(BuildContext context,Widget views){
  var screenSize = MediaQuery.of(context).size;

  return Container(
    color: Colors.white,
    padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
    child: ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: SingleChildScrollView(
        child: views,
      ),
    ),
  );
}