import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:studybridgedashboard/constants/style.dartstyle.dart';
import 'package:studybridgedashboard/widgets/dropdownbutton.dart';
import '../../model/textformfeild.dart';
import '../../responsive.dart';
import '../../widgets/date_picker.dart';
import '../../widgets/pdfviewer.dart';
import '../admin/sidebar/sidebar_widget.dart';
import '../content.dart';

class AddStudentPayment extends StatelessWidget {
  const AddStudentPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WidgetWithSidebar(
          context, cardOfUserTable(context, const AddStudentPaymentForm())),
    );
  }
}

class AddStudentPaymentForm extends StatefulWidget {
  const AddStudentPaymentForm({Key? key}) : super(key: key);

  @override
  State<AddStudentPaymentForm> createState() => _AddStudentPaymentFormState();
}

class _AddStudentPaymentFormState extends State<AddStudentPaymentForm> {
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
                      'Add Student Payment ',
                      style: MyTextStyles.headingSmallWhite,
                    )),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Responsive.isMobile(context)
                ? SizedBox(
                    height: 570,
                    child: Column(
                      children: [
                        const DropDownCustom(
                          item: ['first', 'second'],
                          label: 'Select Session',
                        ),
                        const DropDownCustom(
                          item: ['first', 'second'],
                          label: 'Select Class',
                        ),
                        const DropDownCustom(
                          item: ['first', 'second'],
                          label: 'Select Section',
                        ),
                        const DropDownCustom(
                          item: ['first', 'second'],
                          label: 'Select Student',
                        ),
                        TextFormFeild(
                          labelText: 'Roll No',
                          editable: !isEditable,
                          maxLines: 1,
                        ),
                        TextFormFeild(
                          labelText: 'Student Fee',
                          editable: isEditable,
                          maxLines: 1,
                        ),
                        TextFormFeild(
                          labelText: 'Additional Fee',
                          editable: isEditable,
                          maxLines: 1,
                        ),
                        TextFormFeild(
                          labelText: 'Student Fine',
                          editable: isEditable,
                          maxLines: 1,
                        ),
                        const DatePicker(
                          labelText: 'Fee Submitting Date',
                        ),
                        const DatePicker(
                          labelText: 'Due Date',
                        ),
                      ],
                    ),
                  )
                : Column(
                    children: [
                      Row(
                        children: const [
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
                        ],
                      ),
                      Row(
                        children: [
                          const DropDownCustom(
                            item: ['first', 'second'],
                            label: 'Select Student',
                          ),
                          TextFormFeild(
                            labelText: 'Roll No',
                            editable: !isEditable,
                            maxLines: 1,
                          ),
                          const DatePicker(
                            labelText: 'Fee Submitting Date',
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          TextFormFeild(
                            labelText: 'Student Fee',
                            editable: isEditable,
                            maxLines: 1,
                          ),
                          TextFormFeild(
                            labelText: 'Additional Dues',
                            editable: isEditable,
                            maxLines: 1,
                          ),
                          TextFormFeild(
                            labelText: 'Student Fine',
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
                  'Submit Fee',
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
