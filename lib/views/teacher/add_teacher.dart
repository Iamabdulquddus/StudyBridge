import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:studybridgedashboard/constants/style.dartstyle.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../responsive.dart';
import '../../widgets/pdfviewer.dart';
import '../admin/sidebar/sidebar_widget.dart';
import '../content.dart';
import '../../model/textformfeild.dart';
import '../../widgets/date_picker.dart';
import '../../widgets/filepicker.dart';
import 'components/teacher_documents.dart';

class AddTeacher extends StatelessWidget {
  const AddTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WidgetWithSidebar(
          context, cardOfUserTable(context, const AddTeacherForm())),
    );
  }
}

class AddTeacherForm extends StatefulWidget {
  const AddTeacherForm({Key? key}) : super(key: key);

  @override
  State<AddTeacherForm> createState() => _AddTeacherFormState();
}

class _AddTeacherFormState extends State<AddTeacherForm> {
  bool isEditable = true;
  int numberOfTextFields = 1;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: lightColor,
      ),

      width: size.width,
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
                      'Add Teacher',
                      style: MyTextStyles.headingSmallWhite,
                    )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(wDefaultPadding),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '   Profile Picture',
                        style: MyTextStyles.headingSmallPrimary,
                      ),
                      PickImage(),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            Responsive.isMobile(context)
                ? SizedBox(
                    height: 1070,
                    child: Column(
                      children: [
                        TextFormFeild(
                          labelText: 'First Name',
                          editable: isEditable,
                          maxLines: 1,
                        ),
                        TextFormFeild(
                          labelText: 'Last Name',
                          editable: isEditable,
                          maxLines: 1,
                        ),
                        TextFormFeild(
                          labelText: 'CNIC Number',
                          editable: isEditable,
                          maxLenght: 13,
                          maxLines: 1,
                        ),
                        TextFormFeild(
                          labelText: 'Registration ID',
                          editable: isEditable,
                          maxLines: 1,
                        ),
                        TextFormFeild(
                          labelText: 'Email',
                          editable: isEditable,
                          maxLines: 1,
                        ),
                        TextFormFeild(
                          labelText: 'Phone Number',
                          editable: isEditable,
                          maxLenght: 11,
                          maxLines: 1,
                        ),
                        TextFormFeild(
                          labelText: 'Region',
                          editable: isEditable,
                          maxLines: 1,
                        ),
                        TextFormFeild(
                          labelText: 'Education',
                          editable: isEditable,
                          maxLines: 1,
                        ),
                        TextFormFeild(
                          labelText: 'Experience (in years)',
                          editable: isEditable,
                          maxLines: 1,
                        ),
                        TextFormFeild(
                          labelText: 'Salary',
                          editable: isEditable,
                          maxLines: 1,
                        ),
                        TextFormFeild(
                          labelText: 'Specialization',
                          editable: isEditable,
                          maxLines: 1,
                        ),
                        const DatePicker(
                          labelText: "Joining date",
                        ),
                        TextFormFeild(
                          labelText: 'Postal Address',
                          editable: isEditable,
                          maxLines: 2,
                        ),
                        TextFormFeild(
                          labelText: 'Current Address',
                          editable: isEditable,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  )
                : Column(
                    children: [
                      Row(
                        children: [
                          TextFormFeild(
                            labelText: 'First Name',
                            editable: isEditable,
                            maxLines: 1,
                          ),
                          TextFormFeild(
                            labelText: 'Last Name',
                            editable: isEditable,
                            maxLines: 1,
                          ),
                          TextFormFeild(
                            labelText: 'CNIC Number',
                            editable: isEditable,
                            maxLenght: 13,
                            maxLines: 1,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          TextFormFeild(
                            labelText: 'Registration ID',
                            editable: isEditable,
                            maxLines: 1,
                          ),
                          TextFormFeild(
                            labelText: 'Email',
                            editable: isEditable,
                            maxLines: 1,
                          ),
                          TextFormFeild(
                            labelText: 'Phone Number',
                            editable: isEditable,
                            maxLenght: 11,
                            maxLines: 1,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          TextFormFeild(
                            labelText: 'Region',
                            editable: isEditable,
                            maxLines: 1,
                          ),
                          TextFormFeild(
                            labelText: 'Education',
                            editable: isEditable,
                            maxLines: 1,
                          ),
                          TextFormFeild(
                            labelText: 'Experience (in years)',
                            editable: isEditable,
                            maxLines: 1,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          TextFormFeild(
                            labelText: 'Salary',
                            editable: isEditable,
                            maxLines: 1,
                          ),
                          TextFormFeild(
                            labelText: 'Specialization',
                            editable: isEditable,
                            maxLines: 1,
                          ),
                          const DatePicker(
                            labelText: "Joining date",
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          TextFormFeild(
                            labelText: 'Postal Address',
                            editable: isEditable,
                            maxLines: 2,
                          ),
                          TextFormFeild(
                            labelText: 'Current Address',
                            editable: isEditable,
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ],
                  ),
            Padding(
              padding: const EdgeInsets.all(wDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///maybe something needs to go here
                  Text(
                    'Teacher Documents',
                    style: MyTextStyles.headingSmallPrimary,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Form(
                    child: Column(
                      children: [
                        for (int i = 0; i < numberOfTextFields; i++)
                          TeacherDocuments()
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              numberOfTextFields++;
                            });
                          },
                          child: const Text('Add another Document'),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
