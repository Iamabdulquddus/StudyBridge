import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:studybridgedashboard/constants/style.dartstyle.dart';
import 'package:studybridgedashboard/widgets/dropdownbutton.dart';
import '../../responsive.dart';
import '../admin/sidebar/sidebar_widget.dart';
import '../content.dart';

class PromoteClass extends StatelessWidget {
  const PromoteClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WidgetWithSidebar(
          context, cardOfUserTable(context, PromoteClassForm())),
    );
  }
}

class PromoteClassForm extends StatefulWidget {
  const PromoteClassForm({Key? key}) : super(key: key);

  @override
  State<PromoteClassForm> createState() => _PromoteClassFormState();
}

class _PromoteClassFormState extends State<PromoteClassForm> {
  dynamic radioSelection;
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
                      'Promote Class',
                      style: MyTextStyles.headingSmallWhite,
                    )),
                  ],
                ),
              ),
            ),
            Responsive.isMobile(context)
                ? SizedBox(
                    height: 200,
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
                    ],
                  ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Do you want to promote single student:'),
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
                    title: const Text('Yes'),
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
                    title: const Text('No'),
                  ),
                  if (radioSelection == 'yes')
                    SizedBox(
                      height: 130,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          DropDownCustom(
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
            ),
          ],
        ),
      ),
    );
  }
}
