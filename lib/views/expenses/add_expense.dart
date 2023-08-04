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

class AddExpense extends StatelessWidget {
  const AddExpense({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WidgetWithSidebar(
          context, cardOfUserTable(context,  AddExpenseForm())),
    );
  }
}

class AddExpenseForm extends StatefulWidget {
  const AddExpenseForm({Key? key}) : super(key: key);

  @override
  State<AddExpenseForm> createState() => _AddExpenseFormState();
}

class _AddExpenseFormState extends State<AddExpenseForm> {


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
            SizedBox(height: 10,),
            Responsive.isMobile(context)
                ? SizedBox(
              height: 570,
              child: Column(
                children: [
                  TextFormFeild(
                    labelText: 'To pay Name',
                    editable: isEditable,
                    maxLines: 1,
                  ),
                  TextFormFeild(
                    labelText: 'Expense Name',
                    editable: isEditable,
                    maxLines: 1,
                  ),
                  TextFormFeild(
                    labelText: 'Expense Amount',
                    editable: isEditable,
                    maxLines: 1,
                  ),
                  const DatePicker(labelText: 'Fee Submitting Date',),
                ],
              ),
            )
                : Column(
              children: [
                Row(
                  children: [
                    TextFormFeild(
                      labelText: 'To pay Name',
                      editable: isEditable,
                      maxLines: 1,
                    ),
                    TextFormFeild(
                      labelText: 'Expense Name',
                      editable: isEditable,
                      maxLines: 1,
                    ),
                    TextFormFeild(
                      labelText: 'Expense Amount',
                      editable: isEditable,
                      maxLines: 1,
                    ),
                    const DatePicker(labelText: 'Fee Submitting Date',),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Update Expense',
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
