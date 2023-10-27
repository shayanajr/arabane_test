import 'package:arabane_test/new_ad.dart';
import 'package:arabane_test/profile_screen.dart';
import 'package:arabane_test/variables/color-var.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

ColorVar colors = ColorVar();

class _homeScreenState extends State<homeScreen> {
  bool isSelected = false;
  int currentPageIndex = 0;
  bool isselectnavbar = false;

  @override
  Widget build(BuildContext context) {
    final color = isSelected ? colors.primaryColor : Colors.black;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 165,
        surfaceTintColor: Colors.white,
        shadowColor: Colors.black26,
        elevation: 5,
        actions: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: SizedBox(
                  width: 390,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 25),
                    child: SearchBar(
                        hintText: 'البحث عن...',
                        backgroundColor: MaterialStateProperty.resolveWith(
                            (states) => Color(0xffE7FAFD)),
                        elevation:
                            MaterialStateProperty.resolveWith((states) => 5),
                        shadowColor: MaterialStateProperty.resolveWith(
                            (states) => Colors.black26),
                        surfaceTintColor: MaterialStateProperty.resolveWith(
                            (states) => Color(0xffE7FAFD)),
                        padding: const MaterialStatePropertyAll<EdgeInsets>(
                            EdgeInsets.symmetric(horizontal: 20.0)),
                        leading: Icon(Iconsax.search_normal_1),
                        trailing: <Widget>[
                          IconButton(
                            icon: Icon(Iconsax.location),
                            onPressed: () {},
                          ),
                        ]),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  RawChip(
                    label: Row(
                      children: [
                        Icon(
                          Iconsax.filter,
                          color: Color(0xff7B7B7B),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text(
                            'فلتره',
                            style: TextStyle(
                              color: Color(0xff7B7B7B),
                            ),
                          ),
                        ),
                      ],
                    ),
                    side: BorderSide(
                      color: Color(0xffCDCDCD),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  RawChip(
                    onSelected: (bool value) {
                      setState(() {
                        isSelected = !isSelected;
                      });
                    },
                    label: Row(
                      children: [
                        Text(
                          'اعلانات مع الصور',
                          style: TextStyle(
                            color:
                                isSelected ? Colors.black : Color(0xff7B7B7B),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        isSelected ? Icon(Iconsax.close_circle) : SizedBox(),
                      ],
                    ),
                    side: BorderSide(
                      color: Color(0xffCDCDCD),
                    ),
                    backgroundColor:
                        isSelected ? colors.lightprimaryColor : Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: NavigationBar(
            surfaceTintColor: colors.lightprimaryColor,
            backgroundColor: colors.lightprimaryColor,
            onDestinationSelected: (int index) {
              setState(() {
                currentPageIndex = index;
              });
            },
            indicatorColor: Color(0xffB0DDE5),
            selectedIndex: currentPageIndex,
            destinations: <Widget>[
              NavigationDestination(
                selectedIcon: Icon(
                  Iconsax.home_25,
                  color: colors.primaryColor,
                ),
                icon: Icon(Iconsax.home),
                label: 'اعلانات',
              ),
              NavigationDestination(
                icon: Icon(Iconsax.menu_1),
                selectedIcon: Icon(Iconsax.menu_15, color: colors.primaryColor),
                label: 'الفعات',
              ),
              NavigationDestination(
                selectedIcon:
                    Icon(Iconsax.add_square5, color: colors.primaryColor),
                icon: Icon(Iconsax.add_square),
                label: 'تسجیل اعلان',
              ),
              NavigationDestination(
                selectedIcon:
                    Icon(Iconsax.message_text5, color: colors.primaryColor),
                icon: Icon(Iconsax.message_text_1),
                label: 'دردشه',
              ),
              NavigationDestination(
                selectedIcon: Icon(Iconsax.user, color: colors.primaryColor),
                icon: Icon(Iconsax.user),
                label: 'حسابی',
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              surfaceTintColor: Colors.white,
              elevation: 7,
              shadowColor: Colors.black26,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Text(
                            'السیار',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'سیارات',
                                style: TextStyle(color: Color(0xff969696)),
                              ),
                              Text(
                                'منذشهر',
                                style: TextStyle(color: Color(0xff969696)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                      ),
                      child: Image.asset(
                        'assets/Pngs/media.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Get.to(ProfileScreen());
              },
              child: Text('حساب من')),
          ElevatedButton(
              onPressed: () {
                Get.to(ProfileScreen());
              },
              child: Text('صفحه خالی')),
          ElevatedButton(
              onPressed: () {
                Get.to(NewAd());
              },
              child: Text('تسجیل اعلان ')),
        ],
      ),
    );
  }
}
