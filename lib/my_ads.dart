import 'package:arabane_test/variables/color-var.dart';
import 'package:flutter/material.dart';

class MyAds extends StatefulWidget {
  const MyAds({super.key});

  @override
  State<MyAds> createState() => _MyAdsState();
}

ColorVar colors = ColorVar();

class _MyAdsState extends State<MyAds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        shadowColor: Colors.black26,
        elevation: 5,
        centerTitle: true,
        title: Text(
          'اعلاناتی',
          style: TextStyle(color: colors.primaryColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Card(
              surfaceTintColor: Colors.white,
              elevation: 7,
              shadowColor: Colors.black26,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: colors.primaryColor),
                            child: Text(
                              'مدفوع الثمن',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Text(
                            'السیار',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            children: [
                              Text(
                                'سیارات',
                                style: TextStyle(color: Color(0xff969696)),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                child: Text(
                                  '-',
                                  style: TextStyle(color: Color(0xff969696)),
                                ),
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
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                          ),
                          child: Image.asset(
                            'assets/Pngs/media.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.only(
                             topLeft: Radius.circular(12),
                             bottomLeft: Radius.circular(12),
                           ),
                           gradient:  LinearGradient(

                           begin: Alignment.topCenter,
                           end: Alignment.bottomCenter,
                           colors: [
                             Colors.transparent,
                             Colors.transparent,
                             Colors.transparent,
                             colors.primaryColor,
                           ],
                         )
                         ),
                         child: Image.asset( 'assets/Pngs/media.png',
                         fit: BoxFit.contain,
                         color: Colors.transparent,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:95.0),
                          child: Center(
                            child: Text('مسجل',style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold
                            ),),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
