import 'package:arabane_test/my_ads.dart';
import 'package:arabane_test/variables/color-var.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

ColorVar colors = ColorVar();

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        shadowColor: Colors.black26,
        elevation: 5,
        centerTitle: true,
        title: Text(
          'حسابی',
          style: TextStyle(color: colors.primaryColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              profileHeader(),
              profileHeader_Logged(ontap: () {
                Get.bottomSheet(
                  customBottomSheet(),
                );
              }),
              SizedBox(
                height: 25,
              ),
              boxItems(),
              SizedBox(
                height: 25,
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget profileHeader() {
  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 25.0),
        child: Container(
          height: 150,
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xffB8EAEE)),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 25.0),
        child: Container(
          height: 135,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: const LinearGradient(
              transform: GradientRotation(-1.7),
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(16, 184, 198, 1),
                Color.fromRGBO(109, 229, 237, 1),
                Color.fromRGBO(49, 219, 226, 1)
              ],
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
                child: Text(
                  'لم تسجل الدخول فی حسابک ، یمکنک تسجیل الدخول لاستخدام المفراق و تسجیل الاعلانات.',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'معلومات الاتصال',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff1BBDCB)),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 0,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ],
  );
}

Widget boxItems() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          spreadRadius: 0,
          blurRadius: 20,
          offset: Offset(0, 4), // changes position of shadow
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23.0, vertical: 13),
      child: Column(
        children: [
          profileItem(title: 'اعلاناتی', icon: Iconsax.user, ontap: () {
            Get.to(MyAds());
          }),
          profileItem(title: 'الاعلانات المحفوظه', icon: Iconsax.save_2, ontap: () {  }),
          profileItem(title: 'شاهدت اخیرا', icon: Icons.history, ontap: () {  }),
          profileItem(title: 'حقوق الاشتراک الخاصه بی', icon: Iconsax.card, ontap: () {  }),
          profileItem(title: 'مکتب عقاری', icon: Iconsax.shop, ontap: () {  }),
          profileItem(
              title: 'المستشارین العقاربین', icon: Iconsax.receipt_item, ontap: () {  }),
          profileItem(title: 'حولنا', icon: Iconsax.info_circle, ontap: () {  }),
          profileItem(title: 'التواصل معنا', icon: Iconsax.messages_2, ontap: () {  }),
          profileItem(title: 'الاحکام و الشروط', icon: Iconsax.security_user, ontap: () {  }),
        ],
      ),
    ),
  );
}

Widget profileItem({required String title, required IconData icon,required VoidCallback ontap}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 15.0),
    child: InkWell(
      onTap: ontap,
      child: Container(
        color: Colors.white,
        child: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: colors.lightprimaryColor,
              child: Icon(
                icon,
                color: colors.primaryColor,
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 16),
            ),
            Spacer(),
            Icon(
              Iconsax.arrow_left_2,
              color: Color(0xffB8B8B8),
            )
          ],
        ),
      ),
    ),
  );
}

Widget profileHeader_Logged({required VoidCallback ontap}) {
  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 25.0),
        child: Container(
          height: 150,
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xffB8EAEE)),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 25.0),
        child: Container(
          height: 135,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: const LinearGradient(
              transform: GradientRotation(-1.7),
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(16, 184, 198, 1),
                Color.fromRGBO(109, 229, 237, 1),
                Color.fromRGBO(49, 219, 226, 1)
              ],
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16, top: 16),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      child: CircleAvatar(
                        radius: 28,
                        backgroundColor: Color(0xffD9D9D9),
                        child: Icon(
                          Iconsax.user,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'حمید رضایی',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '09104563008',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: ElevatedButton.icon(
                    onPressed: ontap,
                    icon: Icon(
                      Iconsax.logout,
                      color: colors.errorColor,
                    ),
                    label: Text(
                      'معلومات الاتصال',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: colors.errorColor),
                    ),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: colors.LighterrorColor,
                      backgroundColor: Colors.white,
                      surfaceTintColor: colors.LighterrorColor,
                      elevation: 0,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ],
  );
}

Widget customBottomSheet() {
  return Container(
    width: double.infinity,
    height: 460,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SizedBox(
            height: 45,
          ),
          Image.asset('assets/Pngs/sad.png'),
          Container(
            padding: EdgeInsets.symmetric(vertical: 40),
            width: double.infinity,
            decoration: BoxDecoration(
                color: colors.LighterrorColor,
                borderRadius: BorderRadius.circular(25)),
            child: Column(
              children: [
                Text(
                  'هل أنت متأكد؟',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: colors.errorColor),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'عند تسجيل الخروج من حساب المستخدم،\n لن يتم حذف إعلاناتك، ولكن ستعود قريبًا!',
                  style: TextStyle(fontSize: 16, color: Color(0xff898A8D)),
                )
              ],
            ),
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 170,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('تسجيل خروج',style: TextStyle(
                    fontSize: 16
                  ),),
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: colors.errorColor,
                    foregroundColor: Colors.white
                  ),
                ),
              ),
              SizedBox(
                width: 170,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text('يلغي',style: TextStyle(
                    fontSize: 16
                  ),),
                  style: OutlinedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    foregroundColor: colors.errorColor,
                    side: BorderSide(width: 1.0, color: colors.errorColor),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
