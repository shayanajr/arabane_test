import 'package:arabane_test/variables/color-var.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

ColorVar colors = ColorVar();

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        shadowColor: Colors.black26,
        elevation: 5,
        centerTitle: true,
        title: Text(
          'اعلان اسیار',
          style: TextStyle(color: colors.primaryColor),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: CircleAvatar(
              backgroundColor: colors.primaryColor,
              child: Text(
                'A',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                chatBox_1(),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                chatBox_2(),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Container(
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50.0),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 3),
                        blurRadius: 10,
                        spreadRadius: -4,
                        color: Colors.black.withOpacity(0.25))
                  ],
                ),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(right: 20,top: 10),
                        hintText: "اکتب رساله ...",
                        hintStyle: TextStyle(color: colors.primaryColor,fontSize: 16),
                        border: InputBorder.none,
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(left:20.0),
                          child: IconButton(
                            icon: RotatedBox(
                              quarterTurns: -90,
                              child: Icon(
                                Iconsax.send_15,
                                color: colors.primaryColor,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        )),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget chatBox_1() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 22),
    decoration: BoxDecoration(
        color: colors.primaryColor,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(16),
            topLeft: Radius.circular(16),
            bottomLeft: Radius.circular(16))),
    child: Text(
      'nvt.isst.nute@gmail.com',
      style: TextStyle(color: Colors.white, fontSize: 16),
    ),
  );
}

Widget chatBox_2() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 22),
    decoration: BoxDecoration(
        color: colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(16),
            topLeft: Radius.circular(16),
            bottomRight: Radius.circular(16)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            spreadRadius: -1,
            blurRadius: 10,
            offset: Offset(0, 4), // changes position of shadow
          ),
        ]),
    child: Text(
      'nvt.isst.nute@gmail.com',
      style: TextStyle(color: Colors.black, fontSize: 16),
    ),
  );
}
