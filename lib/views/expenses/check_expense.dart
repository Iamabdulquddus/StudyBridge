import 'package:flutter/material.dart';

import '../../../constants/style.dartstyle.dart';
import '../../../model/textformfeild.dart';
import '../../../responsive.dart';
import '../../../widgets/dropdownbutton.dart';

class CheckExpense extends StatefulWidget {
  const CheckExpense({Key? key}) : super(key: key);

  @override
  State<CheckExpense> createState() => _CheckExpenseState();
}

class _CheckExpenseState extends State<CheckExpense> {


  bool isEditable = true;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Column(
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
                      'Checkout Student Attendance',
                      style: MyTextStyles.headingSmallWhite,
                    )),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10,),
        Responsive.isMobile(context)
            ? const SizedBox(
          height: 300,
          child: Column(
            children: [
              DropDownCustom(
                item: ['first', 'second'],
                label: 'Select Class',
              ),
              DropDownCustom(
                item: ['first', 'second'],
                label: 'Select Section',
              ),
              DropDownCustom(
                item: ['January', 'Feburary', 'March', 'April', 'May', 'June', 'July'],
                label: 'Select Month',
              ),
              DropDownCustom(
                item: ['2020', '2021', '2022'],
                label: 'Select Year',
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
                  label: 'Select Class',
                ),
                DropDownCustom(
                  item: ['first', 'second'],
                  label: 'Select Section',
                ),
                DropDownCustom(
                  item: ['January', 'Feburary', 'March', 'April', 'May', 'June', 'July'],
                  label: 'Select Month',
                ),
                DropDownCustom(
                  item: ['2020', '2021', '2022'],
                  label: 'Select Year',
                ),

              ],
            ),
          ],
        ),
      ],
    );
  }
}
