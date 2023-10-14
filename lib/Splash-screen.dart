import 'package:arabane_test/login-screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(milliseconds: 3000),
      () {
        // userController.checkUserLogin();
        Get.to(loginScreen());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/logo arabane.png'),
          ),
          gradient: LinearGradient(
              transform: GradientRotation(-0.75),
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(8, 135, 154, 1),
                Color.fromRGBO(73, 190, 207, 1),
                Color.fromRGBO(8, 135, 154, 1)
              ]),
        ),
        child: Column(
          children: [
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: LoadingAnimationWidget.hexagonDots(
                color: Colors.white,
                size: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
