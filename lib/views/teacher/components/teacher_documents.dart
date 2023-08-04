
import 'package:flutter/material.dart';
import 'package:studybridgedashboard/constants/style.dartstyle.dart';

import '../../../responsive.dart';
import '../../../widgets/dropdownbutton.dart';
import '../../../widgets/pdfviewer.dart';

class TeacherDocuments extends StatelessWidget {
  const TeacherDocuments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Responsive.isMobile(context)? const SizedBox(height: 350, child:  Column(
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
             label: 'Select Document',
           ),
         ],
       ),)
           : const Row(
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
              label: 'Select Document',
            ),
          ],
        ),

        /// Pdf section
        const Padding(
          padding: EdgeInsets.all(wDefaultPadding),
          child: PickPDF(),
        )
      ],
    );
  }
}
