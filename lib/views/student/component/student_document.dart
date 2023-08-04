import 'package:flutter/material.dart';
import 'package:studybridgedashboard/constants/style.dartstyle.dart';

import '../../../responsive.dart';
import '../../../widgets/dropdownbutton.dart';
import '../../../widgets/pdfviewer.dart';

class StudentDocument extends StatelessWidget {
  const StudentDocument({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Responsive.isMobile(context)
            ? SizedBox(
          height: 300,
              child: Column(
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
                    DropDownCustom(
                      item: ['first', 'second'],
                      label: 'Select Document',
                    ),
                  ],
                ),
            )
            : Row(
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
