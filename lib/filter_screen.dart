import 'package:arabane_test/select_city.dart';
import 'package:arabane_test/variables/color-var.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';


class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}
ColorVar colors = ColorVar();
class _FilterScreenState extends State<FilterScreen> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        shadowColor: Colors.black26,
        elevation: 5,
        centerTitle: true,
        title: Text(
          'فیلتره',
          style: TextStyle(color: colors.primaryColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(height: 15,),
            GestureDetector(
              onTap: (){
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'الفئه',
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
            Divider(
              color: colors.DividerColor,
            ),
            GestureDetector(
              onTap: (){
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
            Divider(
              color: colors.DividerColor,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'اعلانات مع الصور',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
               Checkbox(value: isSelected, onChanged: (value){
                 setState(() {
                   isSelected=!isSelected;
                 });
               })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
