import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:studybridgedashboard/constants/images.dart';
import 'package:studybridgedashboard/constants/style.dartstyle.dart';
import 'package:studybridgedashboard/responsive.dart';

import '../login/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => const Login()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: size.width / 10),
        decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(splashBg), fit: BoxFit.cover),
        ),
        child: Center(
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                width: size.width / 1.8,
                decoration: const BoxDecoration(
                  color: lightColor,
                  // borderRadius: BorderRadius.circular(10),
                ),

                // height: 600,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(wDefaultPadding),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    logoWhiteTransparent,
                                    height: 100,
                                  ),
                                  const SizedBox(
                                    height: wDefaultPadding,
                                  ),
                                  Text(
                                    //TODO: school name  detial controller
                                    'Welcome to School Name here',
                                    style: MyTextStyles.headingSmallPrimary,
                                  ),
                                  const SizedBox(
                                    height: wDefaultPadding,
                                  ),
                                  Text(
                                    'A lot of detial of about the school will be displayed here... ',
                                    style: MyTextStyles.subHeadingBlack,
                                    // overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(text: TextSpan(children: [
                                    TextSpan(text:  'Powered by ',
                                      style: MyTextStyles.subHeadingBoldPrimary,),
                                    const TextSpan(text:  'Study',
                                      style: TextStyle(color: tertiary,fontSize: 14,
                                        fontWeight: FontWeight.bold,),),
                                    TextSpan(text:  'Bridge',
                                      style: MyTextStyles.subHeadingBoldPrimary,),

                                  ]),

                                  ),
                                  const SizedBox(
                                    height: wDefaultPadding / 4,
                                  ),
                                  Text(
                                    'Educational Institution Management System',
                                    style: MyTextStyles.xSmallGrey,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                  Responsive.isDesktop(context) ?
                  Expanded(
                      flex: 1,
                      child: Image.asset(
                        spalashImage,
                        fit: BoxFit.cover,
                      ),
                    ) : const SizedBox(),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
