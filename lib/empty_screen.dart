import 'package:flutter/material.dart';

class EmptyScreen extends StatefulWidget {
  const EmptyScreen({super.key});

  @override
  State<EmptyScreen> createState() => _EmptyScreenState();
}

class _EmptyScreenState extends State<EmptyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(),
    );
  }
}

Widget emptyBox (){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset('assets/Pngs/thinking.png'),
      Container(
        width: 345,
        height: 150,
        decoration: BoxDecoration(
          color: Color(0x10A7A7A7),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('فارغ',style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 10,),
            Text('الا یوجد مکتب عقار مسجل.',style: TextStyle(
              fontSize: 16,
              color: Color(0xff4A4A4A)
            ),),
          ],
        ),
      )
    ],
  );
}