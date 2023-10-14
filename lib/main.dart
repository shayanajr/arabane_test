import 'package:arabane_test/Splash-screen.dart';
import 'package:arabane_test/variables/color-var.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}
ColorVar colors = ColorVar();
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      textDirection: TextDirection.rtl,
      title: 'arabaneh',
      theme: ThemeData(
        useMaterial3: true,
         fontFamily: 'IRANYekan,',
             colorSchemeSeed: colors.lightprimaryColor,
      ),
      home: splashScreen() ,
    );
  }
}
