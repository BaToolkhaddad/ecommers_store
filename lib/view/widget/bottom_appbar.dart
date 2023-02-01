import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';

import '../../constant/color.dart';
import '../secreen/chat_secreen.dart';
import '../secreen/home_page.dart';
import '../secreen/myprofil.dart';
import '../secreen/search_secreen.dart';
class AppBarBottomWidget extends StatelessWidget {
  const AppBarBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
      final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
      ),
      child: Container(
      
                      decoration:  const BoxDecoration(
                          color: AppColor.white,
                          backgroundBlendMode: BlendMode.colorDodge,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            topLeft: Radius.circular(50),
                          ),
                          boxShadow: [
                            BoxShadow(
                                //  offset: Offset(1, 5),
                                color: AppColor.primaryColor,
                                spreadRadius: 3,
                                blurRadius: 5),
                          ]),
        height: h * .08,
        child: Padding(
          padding: const EdgeInsets.all(3),
          child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                 SizedBox(width: w*.04,),
                  GFAvatar(
                        backgroundColor: AppColor.white,
                        child: IconButton(
                            onPressed: () {
                           Get.to( const HomeSecreen());
                            },
                            icon: const Icon(
                              Icons.home_outlined,
                              color: AppColor.primaryColor,
                               size: 35,
                  shadows: [
                    Shadow(
                        offset: Offset(3, 3),
                        color: Colors.black38,
                        blurRadius: 2),
                  ],
                            ))),
                               SizedBox(width: w*.03,),
                
              GFAvatar(
                        backgroundColor: AppColor.white,
                        child: IconButton(
                            onPressed: () {
                showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('الطلبات الواردة',textAlign: TextAlign.center,style: TextStyle(color: AppColor.primaryColor,fontWeight: FontWeight.bold),),
            content: const Text('لايوجد',textAlign: TextAlign.right,),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'تخطي'),
                child: const Text('تخطي'),
              ),
              TextButton(
                onPressed: () {  },
                child: const Text('رد'),
              ),
            ],
          ),
                );
                            },
                            icon: const Icon(
                              Icons.notifications_none,
                              color: AppColor.primaryColor,
                                    size: 35,
                  shadows: [
                    Shadow(
                        offset: Offset(3, 3),
                        color: Colors.black38,
                        blurRadius: 2),
                  ],
                            ))),


                            SizedBox(width: w*.06,),
                    GFAvatar(
                  
                        backgroundColor: AppColor.white,
                        child: IconButton(
                            onPressed: () {
                         Get.to( const ChatScreen());
                            },
                            icon: const Center(
                              child:  Icon(
                                Icons.email_outlined,
                                color: AppColor.primaryColor,
                                    size: 35,
                  shadows: [
                    Shadow(
                        offset: Offset(3, 3),
                        color: Colors.black38,
                        blurRadius: 2),
                  ],
                              ),
                            ))),
                               SizedBox(width: w*.06,),
                              GFAvatar(
                        backgroundColor: AppColor.white,
                        child: IconButton(
                            onPressed: () {
                         Get.to(const SearchSecreen());
                            },
                            icon: const Icon(
                              Icons.search,
                              color: AppColor.primaryColor,
                                  size: 35,
                  shadows: [
                    Shadow(
                        offset: Offset(3, 3),
                        color: Colors.black38,
                        blurRadius: 2),
                  ],
                            ))),
                               SizedBox(width: w*.03,),
                    GFAvatar(
                        backgroundColor: AppColor.white,
                        child: IconButton(
                            onPressed: () {
                               Get.to(const MyProfil());
                            },
                            icon: const Icon(
                              Icons.person_outline,
                              color: AppColor.primaryColor,
                                  size: 35,
                  shadows: [
                    Shadow(
                        offset: Offset(3, 3),
                        color: Colors.black38,
                        blurRadius: 2),
                  ],
                            ))),
                               SizedBox(width: w*.03,),
                  ],
          ),
        ),
      ),
    );
  }
}