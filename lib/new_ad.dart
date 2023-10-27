import 'package:arabane_test/select_city.dart';
import 'package:arabane_test/variables/color-var.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NewAd extends StatefulWidget {
  const NewAd({super.key});

  @override
  State<NewAd> createState() => _NewAdState();
}

ColorVar colors = ColorVar();

class _NewAdState extends State<NewAd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        shadowColor: Colors.black26,
        elevation: 5,
        centerTitle: true,
        title: Text(
          'تسجیل اعلان',
          style: TextStyle(color: colors.primaryColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Text(
                  'عنوان الاعلان',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      borderSide: BorderSide(
                        color: Color(0xffADADAD),
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      borderSide: BorderSide(
                        color: colors.ThemeColor,
                        width: 1,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      borderSide: BorderSide(
                        color: colors.errorColor,
                        width: 1,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'عنوان النص ...',
                    labelStyle: TextStyle(color: Color(0xffADADAD))),
              ),
              SizedBox(
                height: 30,
              ),
              Divider(
                color: colors.DividerColor,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'شرح الاعلان',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                    borderSide: BorderSide(
                      color: Color(0xffADADAD),
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                    borderSide: BorderSide(
                      color: colors.ThemeColor,
                      width: 1,
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                    borderSide: BorderSide(
                      color: colors.errorColor,
                      width: 1,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'الشرح ...',
                  labelStyle: TextStyle(color: Color(0xffADADAD)),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Divider(
                color: colors.DividerColor,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'حمل الصور',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: Opacity(
                      opacity: 0.5,
                      child: dashContainer(),
                    ),
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Expanded(
                    child: Opacity(
                      opacity: 0.5,
                      child: dashContainer(),
                    ),
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Expanded(
                    child: dashContainer(),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Divider(
                color: colors.DividerColor,
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: (){
                  Get.to(SelectCity());
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'المدینه',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text('اختیار',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xffA5A5A5)
                                ),
                            ),
                            Icon(Iconsax.arrow_left_2,
                            color: Color(0xffA5A5A5),)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              btn(),
              SizedBox(height: 30,)
            ],
          ),
        ),
      ),
    );
  }
}

Widget dashContainer() {
  return GestureDetector(
    onTap: (){},
    child: DottedBorder(
      radius: Radius.circular(20),
      borderType: BorderType.RRect,
      dashPattern: [4],
      color: colors.primaryColor,
      child: Container(
        height: 90,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Iconsax.gallery_add,
                color: colors.primaryColor,
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'اضافه صوره',
                style: TextStyle(color: colors.primaryColor),
              )
            ],
          ),
        ),
      ),
    ),
  );
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
        'تایید',
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
    ),
  );
}