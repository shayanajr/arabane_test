import 'package:arabane_test/new_ad.dart';
import 'package:arabane_test/variables/color-var.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SelectCity extends StatefulWidget {
  const SelectCity({super.key});

  @override
  State<SelectCity> createState() => _SelectCityState();
}

ColorVar colors = ColorVar();

class _SelectCityState extends State<SelectCity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        shadowColor: Colors.black26,
        elevation: 5,
        centerTitle: true,
        title: Text(
          'اختیار المدینه',
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
                padding: const EdgeInsets.only(top: 18.0, bottom: 6),
                child: Text(
                  'اختیار المدینه',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Text(
                'یجب اختیار القضا و فی حال عدم وجوده فی النظام یجب اختیار الاقرب.',
                style: TextStyle(fontSize: 12, color: Color(0xff757575)),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
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
                            Text(
                              'اختیار',
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xffA5A5A5)),
                            ),
                            Icon(
                              Iconsax.arrow_left_2,
                              color: Color(0xffA5A5A5),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: colors.DividerColor,
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(SelectCity());
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ناحیه او حی',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              'اختیار',
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xffA5A5A5)),
                            ),
                            Icon(
                              Iconsax.arrow_left_2,
                              color: Color(0xffA5A5A5),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: colors.DividerColor,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'العنوان',
                style: TextStyle(
                  fontSize: 16,
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
                    labelText: 'العنوان ...',
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
                'اختیار الموقع الخرائط',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              dashContainer_big(),
              SizedBox(
                height: 30,
              ),
              btn(),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget dashContainer_big() {
  return GestureDetector(
    onTap: (){},
    child: DottedBorder(
      radius: Radius.circular(20),
      borderType: BorderType.RRect,
      dashPattern: [4],
      color: colors.primaryColor,
      child: Container(
        height: 180,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Iconsax.location_add,
                color: colors.primaryColor,
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'فتح الخرائط',
                style: TextStyle(color: colors.primaryColor),
              )
            ],
          ),
        ),
      ),
    ),
  );
}