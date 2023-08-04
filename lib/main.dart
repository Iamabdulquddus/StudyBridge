import 'dart:ui';

import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studybridgedashboard/views/display.dart';
import 'package:studybridgedashboard/views/login/login.dart';

import 'constants/routes.dart';
import 'constants/style.dartstyle.dart';

void main() {
  runApp(const MyApp());
  doWhenWindowReady(() {
    final win = appWindow;
    const initialSize = Size(450, 450);
    win.minSize = initialSize;
    // win.size = initialSize;
    win.alignment = Alignment.center;
    win.title = "Study Bridge";
    win.show();
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.trackpad
        },
      ),
      title: 'StudyBridge Dashboard',
      theme: ThemeData(
        primarySwatch: Palette.myColors,
      ),
      initialRoute: MyRoutes.getSplash(),
      getPages: MyRoutes.appRoutes(),
    );
  }
}
