import 'package:flutter/material.dart';

import '../../../constants/style.dartstyle.dart';
import '../../../model/textformfeild.dart';
import '../../../responsive.dart';
import '../../../widgets/date_picker.dart';

class CampusField extends StatefulWidget {
  const CampusField({Key? key}) : super(key: key);

  @override
  State<CampusField> createState() => _CampusFieldState();
}


class _CampusFieldState extends State<CampusField> {

  String name = '';
  String city = '';
  final _formKey = GlobalKey<FormState>();
  TextEditingController campusName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    bool isEditable = true;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: secondary.withOpacity(0.5),
        ),
        padding: const EdgeInsets.fromLTRB(
            wDefaultPadding, wDefaultPadding / 2, 0, wDefaultPadding / 2),
        child: SizedBox(
          width: size.width / 1.2,
          child: Row(
            children: [
              Flexible(
                child: Text(
                   name,
                  style: MyTextStyles.headingxSmallPrimary,
                  overflow: TextOverflow.visible,
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Responsive.isMobile(context)
          ? SizedBox(
              height: 750,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormFeild(
                      controller: campusName,
                      labelText: 'Campus Name',
                      editable: isEditable,
                      maxLines: 1,
                      onChange: (value) {
                        setState(() {
                          name = value;
                        });

                      },
                    ),
                    TextFormFeild(
                      labelText: 'City',
                      editable: isEditable,
                      maxLines: 1,
                    ),
                    TextFormFeild(
                      labelText: 'Principle Name',
                      editable: isEditable,
                      maxLines: 1,
                    ),
                    TextFormFeild(
                      labelText: 'Principle CNIC',
                      editable: isEditable,
                      maxLenght: 13,
                      maxLines: 1,
                    ),
                    TextFormFeild(
                      labelText: 'Phone Number Principle',
                      editable: isEditable,
                      maxLenght: 11,
                      maxLines: 1,
                    ),
                    TextFormFeild(
                      labelText: 'Phone Number Admin',
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
                    const DatePicker(
                      labelText: "Adding Campus Date",
                    ),
                    TextFormFeild(
                      labelText: 'Campus Address',
                      editable: isEditable,
                      maxLines: 2,
                    ),
                  ]),
            )
          : Column(
              children: [
                Row(
                  children: [
                    TextFormFeild(
                      labelText: 'Campus Name',
                      editable: isEditable,
                      maxLines: 1,
                    ),
                    TextFormFeild(
                      labelText: 'City',
                      editable: isEditable,
                      maxLines: 1,
                    ),
                    TextFormFeild(
                      labelText: 'Principle Name',
                      editable: isEditable,
                      maxLines: 1,
                    ),
                  ],
                ),
                Row(
                  children: [
                    TextFormFeild(
                      labelText: 'Principle CNIC',
                      editable: isEditable,
                      maxLenght: 13,
                      maxLines: 1,
                    ),
                    TextFormFeild(
                      labelText: 'Phone Number Principle',
                      editable: isEditable,
                      maxLenght: 11,
                      maxLines: 1,
                    ),
                    TextFormFeild(
                      labelText: 'Phone Number Admin',
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
                    const DatePicker(
                      labelText: "Adding Campus Date",
                    ),
                  ],
                ),
                Row(
                  children: [
                    TextFormFeild(
                      labelText: 'Campus Address',
                      editable: isEditable,
                      maxLines: 2,
                    ),
                  ],
                ),
              ],
            ),
    ]);
  }
}
