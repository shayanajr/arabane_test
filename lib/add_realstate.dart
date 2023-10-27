
import 'package:arabane_test/new_ad.dart';
import 'package:arabane_test/select_city.dart';
import 'package:arabane_test/variables/color-var.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';


class AddRealstate extends StatefulWidget {
  const AddRealstate({super.key});

  @override
  State<AddRealstate> createState() => _AddRealstateState();
}

ColorVar colors = ColorVar();
class _AddRealstateState extends State<AddRealstate> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        shadowColor: Colors.black26,
        elevation: 5,
        centerTitle: true,
        title: Text(
          'تسجیل مکتب عقار',
          style: TextStyle(color: colors.primaryColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Text(
                'اسم مدیر المکتب',
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
                  labelText: 'اسم مدیر المکتب...',
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
              'الشرح',
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
              'تحمیل الشعار',
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
              height: 80,
            ),
            btn(),

          ],
        ),
      ),
    );
  }
}
