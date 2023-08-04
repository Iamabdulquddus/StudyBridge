import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:studybridgedashboard/constants/style.dartstyle.dart';
import 'package:studybridgedashboard/widgets/dropdownbutton.dart';
import '../../model/textformfeild.dart';
import '../../responsive.dart';
import '../../widgets/pdfviewer.dart';
import '../admin/sidebar/sidebar_widget.dart';
import '../content.dart';

class AddResults extends StatelessWidget {
  const AddResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WidgetWithSidebar(
          context, cardOfUserTable(context,  AddResultForm())),
    );
  }
}

class AddResultForm extends StatefulWidget {
  const AddResultForm({Key? key}) : super(key: key);

  @override
  State<AddResultForm> createState() => _AddResultFormState();
}

class _AddResultFormState extends State<AddResultForm> {


  bool isEditable = true;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: lightColor,
      ),

      // width: size.width,
      // height: size.height-40,
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
            SizedBox(height: 10,),
            Responsive.isMobile(context)
                ? SizedBox(
              height: 500,
              child: Column(
                children: [
                  DropDownCustom(
                    item: ['first', 'second'],
                    label: 'Select Session',
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
                    item: ['first', 'second'],
                    label: 'Select Exam',
                  ),
                  DropDownCustom(
                    item: ['first', 'second'],
                    label: 'Select Student',
                  ),
                  TextFormFeild(
                    labelText: 'Obtained Marks',
                    editable: isEditable,
                    maxLines: 1,
                  ),
                  TextFormFeild(
                    labelText: 'Total Marks',
                    editable: isEditable,
                    maxLines: 1,
                  ),
                ],
              ),
            )
                : Column(
              children: [
                Row(
                  children: [
                    DropDownCustom(
                      item: ['first', 'second'],
                      label: 'Select Session',
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
                      item: ['first', 'second'],
                      label: 'Select Exam',
                    ),
                  ],
                ),
                Row(
                  children: [
                    DropDownCustom(
                      item: ['first', 'second'],
                      label: 'Select Student',
                    ),
                    TextFormFeild(
                      labelText: 'Obtained Marks',
                      editable: isEditable,
                      maxLines: 1,
                    ),
                    TextFormFeild(
                      labelText: 'Total Marks',
                      editable: isEditable,
                      maxLines: 1,
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
            // Padding(
            //   padding: const EdgeInsets.all(wDefaultPadding),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       ///maybe something needs to go here
            //       Text(
            //         'Teacher Resume',
            //         style: MyTextStyles.headingSmallPrimary,
            //       ),
            //       SizedBox(
            //         height: 10,
            //       ),
            //       PickPDF(
            //         noPdf: 'Add Resume',
            //         openedPdf: 'Change Resume',
            //         subText: 'Please add teacher resume',
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
