import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:studybridgedashboard/constants/style.dartstyle.dart';
import 'package:studybridgedashboard/widgets/dropdownbutton.dart';
import '../../model/textformfeild.dart';
import '../../responsive.dart';
import '../admin/sidebar/sidebar_widget.dart';
import '../content.dart';

class AddClassRoutine extends StatelessWidget {
  const AddClassRoutine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WidgetWithSidebar(
          context, cardOfUserTable(context,  const ClassRoutineForm())),
    );
  }
}

class ClassRoutineForm extends StatefulWidget {
  const ClassRoutineForm({Key? key}) : super(key: key);

  @override
  State<ClassRoutineForm> createState() => _ClassRoutineFormState();
}

class _ClassRoutineFormState extends State<ClassRoutineForm> {


  bool isEditable = true;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: lightColor,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: primary,
              ),
              padding: const EdgeInsets.fromLTRB(
                  wDefaultPadding, wDefaultPadding / 2, 0, wDefaultPadding / 2),
              child: SizedBox(
                width: size.width / 1.2,
                child: Row(
                  children: [
                    Flexible(
                        child: Text(
                          'Add Result',
                          style: MyTextStyles.headingSmallWhite,
                        )),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Responsive.isMobile(context)
                ? const SizedBox(
              height: 450 ,
              child: Column(
                children: [
                  DropDownCustom(
                    item: ['first', 'second'],
                    label: 'Select Subject',
                  ),
                  DropDownCustom(
                    item: ['first', 'second'],
                    label: 'Select Teacher',
                  ),
                  DropDownCustom(
                    item: ['first', 'second'],
                    label: 'Select Class',
                  ),
                  DropDownCustom(
                    item: ['first', 'second'],
                    label: 'Select Section',
                  ),
                  DropDownCustom(
                    item: ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'],
                    label: 'Select Day',
                  ),
                  DropDownCustom(
                    item: ['7:30am - 8:00 am ', '8:30am - 9:30 am ', '9:30am - 10:30 am ', '10:30am - 11:30 am ', '11:30am - 12:30 am ', '12:30am - 01  :00 am ', ],
                    label: 'Select Time',
                  ),
                ],
              ),
            )
                : const Column(
              children: [
                Row(
                  children: [
                    DropDownCustom(
                      item: ['first', 'second'],
                      label: 'Select Subject',
                    ),
                    DropDownCustom(
                      item: ['first', 'second'],
                      label: 'Select Teacher',
                    ),
                    DropDownCustom(
                      item: ['first', 'second'],
                      label: 'Select Class',
                    ),

                  ],
                ),
                Row(
                  children: [
                    DropDownCustom(
                      item: ['first', 'second'],
                      label: 'Select Section',
                    ),
                    DropDownCustom(
                      item: ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'],
                      label: 'Select Day',
                    ),
                    DropDownCustom(
                      item: ['7:30am - 8:00 am ', '8:30am - 9:30 am ', '9:30am - 10:00 am ', ],
                      label: 'Select Time',
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Add Result',
                  style: MyTextStyles.subHeadingWhite,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
