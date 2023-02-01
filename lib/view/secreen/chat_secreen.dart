import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/color.dart';
import 'home_page.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    
    body:DefaultTabController(
  length: 2,
  child: Scaffold(
    appBar: AppBar(
      backgroundColor: AppColor.white,
      bottom: TabBar(
        tabs: [
          Tab(icon: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
           
          Icon(Icons.people_alt_outlined,color: AppColor.primaryColor,),
          Text('الأشخاص النشطون',     style: TextStyle(
              color: AppColor.primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 15,
              shadows: [
                Shadow(
                    offset: Offset(3, 3), color: Colors.black38, blurRadius: 3),
              ],
            ),),
            ],
          )),
          Tab(icon: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:const [

                Icon(Icons.chat,color: AppColor.primaryColor,
       
              ),
             Text('المحادثات'   ,     style: TextStyle(
              color: AppColor.primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 15,
              shadows: [
                Shadow(
                    offset: Offset(3, 3), color: Colors.black38, blurRadius: 3),
              ],
            ),),

            ],
          )),
        ],
      ),
     title:   Center(
       child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
             const Icon(Icons.message_outlined, size: 30,color: AppColor.primaryColor, shadows: [
              Shadow(offset: Offset(3, 3), color: Colors.black38, blurRadius: 3),
            ]),
            const Text(
              "   الرسائل",
              style: TextStyle(
                color: AppColor.primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                shadows: [
                  Shadow(
                      offset: Offset(3, 3), color: Colors.black38, blurRadius: 3),
                ],
              ),
            ),]),
     ),
            actions: [
            IconButton(
                onPressed: () {
                  Get.to(const HomeSecreen());
                  },
                icon: const Icon(
                  Icons.close,
                  color: AppColor.primaryColor,
                  size: 30,
                  shadows: [
                    Shadow(
                        offset: Offset(3, 3),
                        color: Colors.black38,
                        blurRadius: 3),
                  ],
                ))
          ],
    ),
    body: TabBarView(
      children: [
        //tab1
           const Icon(Icons.people, size: 150,color:AppColor.primaryColor),

        //tab2
       Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
       
       Container(),
        Container(
          decoration: const BoxDecoration(
            border: Border(top: BorderSide(color: AppColor.primaryColor,width: 2))
          ),
          child: Row(
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.end,
            children: [
           
         Expanded(child: TextField(
          keyboardType: TextInputType.multiline,
          onChanged: (value) {
            
          },
          // ignore: prefer_const_constructors
          decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
          hintText: 'اكتب هنا',
          border: InputBorder.none
          
          ),
        
         )),
               TextButton(onPressed: (){}, child: const Text('إرسال', style: TextStyle(
              color: AppColor.primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 18))),
         const Icon(Icons.arrow_right_outlined,color: AppColor.primaryColor,),

          ],),
        ),
      
    ]),
     
      ],
    ),
  ),
),


    );
  }
}



