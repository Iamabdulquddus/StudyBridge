import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:studybridgedashboard/constants/style.dartstyle.dart';
import 'package:studybridgedashboard/responsive.dart';
import '../../widgets/dropdownbutton.dart';
import '../admin/sidebar/sidebar_widget.dart';
import '../content.dart';
import '../../model/textformfeild.dart';
import '../../widgets/date_picker.dart';
import '../../widgets/filepicker.dart';
import 'component/student_document.dart';

class AddStudent extends StatelessWidget {
  const AddStudent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WidgetWithSidebar(
          context, cardOfUserTable(context, const AddStudentForm())),
    );
  }
}

class AddStudentForm extends StatefulWidget {
  const AddStudentForm({Key? key}) : super(key: key);

  @override
  State<AddStudentForm> createState() => _AddStudentFormState();
}

class _AddStudentFormState extends State<AddStudentForm> {
  bool isEditable = true;
  int numberOfTextFields = 1;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: lightColor,
            ),
            width: size.width,
            // height: size.height-40,
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
                  padding: const EdgeInsets.fromLTRB(wDefaultPadding,
                      wDefaultPadding / 2, 0, wDefaultPadding / 2),
                  child: SizedBox(
                    width: size.width / 1.2,
                    child: Row(
                      children: [
                        Flexible(
                          child: Text(
                            'Add Student',
                            style: MyTextStyles.headingSmallWhite,
                            overflow: TextOverflow.visible,
                          ),
                        ),
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
                    ],
                  ),
                ),
                Responsive.isMobile(context)
                    ? SizedBox(
                        height: 1100,
                        child: Column(children: [
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
                            labelText: 'CNIC / Domicile',
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
                            maxLines: 1,
                            maxLenght: 11,
                          ),
                          TextFormFeild(
                            labelText: 'Roll No',
                            editable: isEditable,
                            maxLines: 1,
                          ),
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
                          TextFormFeild(
                            labelText: 'Student fee',
                            editable: isEditable,
                            maxLines: 1,
                          ),
                          TextFormFeild(
                            labelText: 'Region',
                            editable: isEditable,
                            maxLines: 1,
                          ),
                          const DatePicker(
                            labelText: "Date of birth",
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
                        ]),
                      )
                    : Column(children: [
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
                              labelText: 'CNIC / Domicile',
                              editable: isEditable,
                              maxLines: 1,
                              maxLenght: 13,
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
                              maxLines: 1,
                              maxLenght: 11,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            TextFormFeild(
                              labelText: 'Student fee',
                              editable: isEditable,
                              maxLines: 1,
                            ),
                            TextFormFeild(
                              labelText: 'Religion',
                              editable: isEditable,
                              maxLines: 1,
                            ),
                            const DatePicker(
                              labelText: "Date of birth",
                            ),
                          ],
                        ),
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
                            TextFormFeild(
                              labelText: 'Roll No',
                              editable: isEditable,
                              maxLines: 1,
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
                      ]),
              ],
            ),
          ),
          SizedBox(
            height: wDefaultPadding,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: lightColor,
            ),
            width: size.width,
            // height: size.height-40,
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
                  padding: const EdgeInsets.fromLTRB(wDefaultPadding,
                      wDefaultPadding / 2, 0, wDefaultPadding / 2),
                  child: SizedBox(
                    width: size.width / 1.2,
                    child: Row(
                      children: [
                        Flexible(
                          child: Text(
                            'Guardian Information',
                            style: MyTextStyles.headingSmallWhite,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Responsive.isMobile(context)
                    ? SizedBox(
                        height: 450,
                        child: Column(
                          children: [
                            TextFormFeild(
                              labelText: 'Full Name',
                              editable: isEditable,
                              maxLines: 1,
                            ),
                            TextFormFeild(
                              labelText: 'CNIC Number',
                              editable: isEditable,
                              maxLines: 1,
                            ),
                            TextFormFeild(
                              labelText: 'Relation to student',
                              editable: isEditable,
                              maxLines: 1,
                            ),
                            TextFormFeild(
                              labelText: 'Phone No',
                              editable: isEditable,
                              maxLines: 1,
                            ),
                            TextFormFeild(
                              labelText: 'Occupation',
                              editable: isEditable,
                              maxLines: 1,
                            ),
                            TextFormFeild(
                              labelText: 'Average Yearly Salary',
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
                              TextFormFeild(
                                labelText: 'Full Name',
                                editable: isEditable,
                                maxLines: 1,
                              ),
                              TextFormFeild(
                                labelText: 'CNIC Number',
                                editable: isEditable,
                                maxLines: 1,
                              ),
                              TextFormFeild(
                                labelText: 'Relation to student',
                                editable: isEditable,
                                maxLines: 1,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              TextFormFeild(
                                labelText: 'Phone No',
                                editable: isEditable,
                                maxLines: 1,
                              ),
                              TextFormFeild(
                                labelText: 'Occupation',
                                editable: isEditable,
                                maxLines: 1,
                              ),
                              TextFormFeild(
                                labelText: 'Average Yearly Salary',
                                editable: isEditable,
                                maxLines: 1,
                              ),
                            ],
                          ),
                        ],
                      ),
              ],
            ),
          ),
          SizedBox(
            height: wDefaultPadding,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: lightColor,
            ),
            width: size.width,
            // height: size.height-40,
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
                  padding: const EdgeInsets.fromLTRB(wDefaultPadding,
                      wDefaultPadding / 2, 0, wDefaultPadding / 2),
                  child: SizedBox(
                    width: size.width / 1.2,
                    child: Row(
                      children: [
                        Flexible(
                          child: Text(
                            'Add Student Document',
                            style: MyTextStyles.headingSmallWhite,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Form(
                  child: Column(
                    children: [
                      for (int i = 0; i < numberOfTextFields; i++)
                        StudentDocument()
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
          ),
        ],
      ),
    );
  }
}
