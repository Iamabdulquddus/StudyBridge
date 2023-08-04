import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:studybridgedashboard/constants/style.dartstyle.dart';
import 'package:studybridgedashboard/responsive.dart';
import '../../../model/textformfeild.dart';
import '../../../widgets/date_picker.dart';
import '../../../widgets/filepicker.dart';
import '../../widgets/dropdownbutton.dart';
import '../admin/sidebar/sidebar_widget.dart';
import '../content.dart';
import '../student/component/student_document.dart';
import 'component/campus_field.dart';

class AddSchool extends StatelessWidget {
  const AddSchool({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WidgetWithSidebar(
          context, cardOfUserTable(context, const AddSchoolForm())),
    );
  }
}

class AddSchoolForm extends StatefulWidget {
  const AddSchoolForm({Key? key}) : super(key: key);

  @override
  State<AddSchoolForm> createState() => _AddSchoolFormState();
}

class _AddSchoolFormState extends State<AddSchoolForm> {
  bool isEditable = true;
  dynamic radioSelection;
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
                            'Add School',
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
                            '   School Logo',
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
                        height: 600,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFormFeild(
                                labelText: 'School Name',
                                editable: isEditable,
                                maxLines: 1,
                              ),
                              TextFormFeild(
                                labelText: 'Short Name',
                                editable: isEditable,
                                maxLines: 1,
                              ),
                              TextFormFeild(
                                labelText: 'City',
                                editable: isEditable,
                                maxLines: 1,
                              ),
                              TextFormFeild(
                                labelText: 'Director Name',
                                editable: isEditable,
                                maxLines: 1,
                              ),
                              TextFormFeild(
                                labelText: 'Cnic Number',
                                editable: isEditable,
                                maxLenght: 13,
                                maxLines: 1,
                              ),
                              TextFormFeild(
                                labelText: 'Phone Number',
                                editable: isEditable,
                                maxLenght: 11,
                                maxLines: 1,
                              ),
                              TextFormFeild(
                                labelText: 'Email',
                                editable: isEditable,
                                maxLines: 1,
                              ),
                              TextFormFeild(
                                labelText: 'Password',
                                editable: isEditable,
                                maxLines: 1,
                              ),
                            ]),
                      )
                    : Column(
                        children: [
                          Row(
                            children: [
                              TextFormFeild(
                                labelText: 'School Name',
                                editable: isEditable,
                                maxLines: 1,
                              ),
                              TextFormFeild(
                                labelText: 'Short Name',
                                editable: isEditable,
                                maxLines: 1,
                              ),
                              TextFormFeild(
                                labelText: 'City',
                                editable: isEditable,
                                maxLines: 1,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              TextFormFeild(
                                labelText: 'Director Name',
                                editable: isEditable,
                                maxLines: 1,
                              ),
                              TextFormFeild(
                                labelText: 'Cnic Number',
                                editable: isEditable,
                                maxLenght: 13,
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
                                labelText: 'Email',
                                editable: isEditable,
                                maxLines: 1,
                              ),
                              TextFormFeild(
                                labelText: 'Password',
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
            height: 40,
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
                            'Add Campus',
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Add Details about all the campuses',
                        style: MyTextStyles.subHeadingPrimary,
                      ),
                      ListTile(
                        leading: Radio<String>(
                          value: 'yes',
                          groupValue: radioSelection,
                          onChanged: (value) {
                            setState(() {
                              radioSelection = value!;
                            });
                          },
                        ),
                        title: const Text('Only Main Campus'),
                      ),
                      ListTile(
                        leading: Radio<String>(
                          value: 'no',
                          groupValue: radioSelection,
                          onChanged: (value) {
                            setState(() {
                              radioSelection = value!;
                            });
                          },
                        ),
                        title: const Text('Multiple Campus'),
                      ),
                      if (radioSelection == 'yes')
                        SizedBox(
                          height: 130,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const DropDownCustom(
                                item: [
                                  'first',
                                  'second',
                                  'third',
                                  'forth',
                                  'fifth',
                                  'sixth hehfsfsl  fshfsdo  fsdfsd  sdfsf fsdfsdf fsdf f',
                                ],
                                label: 'Select Student',
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Promote',
                                    style: MyTextStyles.subHeadingWhite,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      else if (radioSelection == 'no')
                        Column(
                          children: [
                            Form(
                              child: Column(
                                children: [
                                  for (int i = 0; i < numberOfTextFields; i++)
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 20),
                                      child: const CampusField(),
                                    )
                                ],
                              ),
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: const Text('Save'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        numberOfTextFields++;
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                                    child: const Text('More Campus'),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
