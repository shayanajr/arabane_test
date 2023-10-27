
import 'package:arabane_test/variables/color-var.dart';
import 'package:flutter/material.dart';



class ChatList extends StatefulWidget {
  const ChatList({super.key});

  @override
  State<ChatList> createState() => _ChatListState();
}
ColorVar colors = ColorVar();
class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        shadowColor: Colors.black26,
        elevation: 5,
        centerTitle: true,
        title: Text(
          'قائمه الدردشه',
          style: TextStyle(color: colors.primaryColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Card(
              surfaceTintColor: Color(0xffc8f6ff),
              elevation: 5,
              shadowColor: Colors.black38,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: colors.primaryColor,
                  
                ),
                borderRadius: BorderRadius.circular(12)
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: CircleAvatar(
                            child: Text('A',style: TextStyle(
                              color: Colors.white
                            ),),
                            backgroundColor: colors.primaryColor,
                          )
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'عقارات',
                                style: TextStyle(color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 16),
                              ),
                              SizedBox(height: 4,),
                              Text(
                                '08:32 - 2023-08-19 ',
                                style: TextStyle(color: Color(0xff969696),
                                fontSize: 12),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
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
          ],
        ),
      ),
    );
  }
}
