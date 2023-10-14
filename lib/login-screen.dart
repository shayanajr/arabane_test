import 'package:arabane_test/home-screen.dart';
import 'package:arabane_test/variables/color-var.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

ColorVar colors = ColorVar();

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
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
              SizedBox(
                height: 80,
              ),
              Text(
                'تسجيل الدخول',
                style: TextStyle(
                    color: colors.white,
                    fontSize: 20,
                    fontFamily: 'IRANYekan',
                    fontWeight: FontWeight.w800),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: SvgPicture.asset('assets/SVGs/navpage.svg'),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        width: 377,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: colors.backCard,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 17),
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        color: colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(right: 30.0),
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 40.0),
                                child: Text(
                                  'لاستاخدام میزات البرنامج ، ادخل رقم هاتفک المحمول و\n کلمه المرور المحدده',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'IRANYekan',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              SizedBox(height: 40),
                              textfiledcustome(
                                labeltext: 'رقم الهاتف',
                                hinttext: '***** 964+ ',
                                picon: Iconsax.call,
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              textfiledcustome(
                                labeltext: 'کلمه المرور',
                                hinttext: '*****',
                                picon: Iconsax.lock_1,
                                sicon: Iconsax.eye,
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                width: 360,
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
                                    Get.offAll(homeScreen());
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    shadowColor: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                  ),
                                  child: Text(
                                    'تسجیل الدخول',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 34.0),
                                child: Center(
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Column(
                                      children: [
                                        Text(
                                          'انشا حساب',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w900,
                                            color: colors.primaryColor,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 86,
                                          child: Divider(
                                            color: colors.primaryColor,
                                            height: 2,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class textfiledcustome extends StatefulWidget {
  String labeltext;
  String hinttext;
  IconData picon;
  IconData? sicon;

  textfiledcustome({
    super.key,
    required this.labeltext,
    required this.hinttext,
    required this.picon,
    this.sicon,
  });

  @override
  State<textfiledcustome> createState() => _textfiledcustomeState();
}

class _textfiledcustomeState extends State<textfiledcustome> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      child: TextFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(40.0),
            ),
            borderSide: BorderSide(
              color: colors.bordertextfieldColor,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(40.0),
            ),
            borderSide: BorderSide(
              color: colors.ThemeColor,
              width: 1,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(40.0),
            ),
            borderSide: BorderSide(
              color: colors.errorColor,
              width: 1,
            ),
          ),
          filled: true,
          fillColor: Colors.white,
          labelText: widget.labeltext,
          hintText: widget.hinttext,
          prefixIcon: Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 10),
            child: Icon(widget.picon),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: IconButton(
              icon: Icon(widget.sicon),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
