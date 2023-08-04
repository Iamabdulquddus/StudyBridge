
import 'package:flutter/material.dart';
import 'package:studybridgedashboard/constants/style.dartstyle.dart';

import 'character.dart';

class AttendanceIcon extends StatelessWidget {
  const AttendanceIcon({Key? key, required this.attendance}) : super(key: key);

  final List<Attendance> attendance;

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];
    for (Attendance attendanceIcon in attendance) {
      Icon? iconData;


      if (attendanceIcon == Attendance.present) {
        iconData = Icon( Icons.check,  color : Colors.green, size: 15,);


      } else if (attendanceIcon == Attendance.absent) {
        iconData = Icon( Icons.close,  color : Colors.red, size: 15,);

      } else {
        iconData = Icon(Icons.airline_seat_individual_suite_outlined, color: secondary, size: 15,);

      }
      children.add(iconData,);
    }
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center, children: children);
  }
}
