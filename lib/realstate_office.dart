import 'package:arabane_test/empty_screen.dart';
import 'package:arabane_test/variables/color-var.dart';
import 'package:flutter/material.dart';

class RealstateOffice extends StatefulWidget {
  const RealstateOffice({super.key});

  @override
  State<RealstateOffice> createState() => _RealstateOfficeState();
}

ColorVar colors = ColorVar();
class _RealstateOfficeState extends State<RealstateOffice> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        shadowColor: Colors.black26,
        elevation: 5,
        centerTitle: true,
        title: Text(
          'مکتب عقاری',
          style: TextStyle(color: colors.primaryColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 150,),
            emptyBox(),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: btn(),
            ),
          ],
        ),
      ),
    );
  }
}

Widget btn (){
  return   Container(
    height: 60,
    decoration: BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromRGBO(15, 184, 198, 1),
            Color.fromRGBO(49, 219, 226, 1),
          ]),
      borderRadius: BorderRadius.circular(40),
    ),
    child: ElevatedButton(
      onPressed: () {
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(
        'العودة إلى الحساب',
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
    ),
  );
}