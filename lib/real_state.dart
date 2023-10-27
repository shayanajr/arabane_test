import 'package:arabane_test/add_realstate.dart';
import 'package:arabane_test/variables/color-var.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class RealState extends StatefulWidget {
  const RealState({super.key});

  @override
  State<RealState> createState() => _RealStateState();
}

ColorVar colors = ColorVar();

class _RealStateState extends State<RealState> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 230,
        surfaceTintColor: Colors.white,
        shadowColor: Colors.black26,
        elevation: 5,
        actions: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 75.0),
                    child: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(Iconsax.arrow_right_1)),
                  ),
                  Text(
                    'المستشارین العقاربین',
                    style: TextStyle(color: colors.primaryColor, fontSize: 20),
                  ),
                ],
              ),
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
                            elevation: MaterialStateProperty.resolveWith(
                                (states) => 5),
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
                  RawChip(
                    onSelected: (bool value) {
                      setState(() {
                        isSelected = !isSelected;
                      });
                    },
                    label: Row(
                      children: [
                        Text(
                          'تحدید الموقع',
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
              )
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(AddRealstate());
        },
        child: Icon(
          Iconsax.add,
          color: colors.primaryColor,
        ),
        backgroundColor: colors.lightprimaryColor,
      ),
      body: Center(
        child: Text(
          'لا یوجد مکتب عقار مفعل حالیا.',
          style: TextStyle(fontSize: 20, color: Color(0xff767676)),
        ),
      ),
    );
  }
}
