import 'package:flutter/material.dart';

class CDM {
  //complex drawer menu
  final IconData icon;
  final String title;
  final List<subList> submenus;
  CDM({required this.icon, required this.title, required this.submenus});
}

class subList {
 late final String myRoute;
 late final String subTitle;
 late final IconData subIcon;
  subList(
      {required this.subTitle, required this.subIcon, required this.myRoute});
}
