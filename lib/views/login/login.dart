import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:studybridgedashboard/constants/images.dart';

import '../../constants/style.dartstyle.dart';
import '../../responsive.dart';
import '../dashboard/dashboard.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        padding: EdgeInsets.symmetric(
            vertical: size.width / 13, horizontal: size.width / 13),
        decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(splashBg), fit: BoxFit.cover),
        ),
        child: Center(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: ClipRRect(
                  borderRadius: Responsive.isDesktop(context)
                      ? BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        )
                      : BorderRadius.circular(20),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white12,
                        image: DecorationImage(
                            image: AssetImage(noise), fit: BoxFit.cover),
                      ),
                      padding: const EdgeInsets.all(20),
                      // width: Responsive.isDesktop(context)? size.width/2.7 : size.width/1.2,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Image.asset(
                            logoWhiteTransparent,
                            height: 100,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Account Login',
                            style: MyTextStyles.sectionTitleSmallWhite,
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(
                              style: MyTextStyles.subHeadingWhite,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.person_outline,
                                  color: Colors.white,
                                ),
                                hintText: 'Enter user name',
                                hintStyle: MyTextStyles.subHeadingWhite,
                                enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(
                              style: MyTextStyles.subHeadingWhite,
                              obscureText: true,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.lock_outline,
                                  color: Colors.white,
                                ),
                                hintText: 'Enter Password',
                                hintStyle: MyTextStyles.subHeadingWhite,
                                enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: primary,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 15),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Dashboard()));
                            },
                            child: const Text(
                              'Login',
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Responsive.isDesktop(context)
                  ? Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            color: primary),
                        height: size.height,
                        // padding: EdgeInsets.symmetric(vertical: size.width/13),
                        child: Image.asset(
                          spalashImage,
                          fit: BoxFit.contain,
                        ),
                      ),
                    )
                  : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
