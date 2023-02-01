import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/drawer/gf_drawer.dart';
import 'package:getwidget/components/drawer/gf_drawer_header.dart';

import '../../constant/color.dart';
import '../secreen/chat_secreen.dart';
import '../secreen/home_page.dart';
import '../secreen/myprofil.dart';

class AppDrawer extends GetView {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return GFDrawer(
        color: AppColor.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            GFDrawerHeader(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColor.primaryColor,
                      AppColor.white,
                    ]),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const <Widget>[
                  Text(
                    'Ecommercs Store',
                    style: TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 35,
                        shadows: [
                          Shadow(
                              offset: Offset(5, 5),
                              color: Colors.black38,
                              blurRadius: 3),
                        ],
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
             ListTile(
              leading: const Icon(Icons.home, size: 35, shadows: [
                Shadow(
                    offset: Offset(3, 3), color: Colors.black38, blurRadius: 3),
              ]),
              iconColor: AppColor.primaryColor,
              textColor: AppColor.primaryColor,
              title: const Text(
                'الصفحة الرئيسية',
                style: TextStyle(
                  color: AppColor.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  shadows: [
                    Shadow(
                        offset: Offset(3, 3),
                        color: Colors.black38,
                        blurRadius: 3),
                  ],
                ),
              ),
            onTap: () => Get.to(const HomeSecreen()),
            ),
            ListTile(
              leading: const Icon(Icons.email, size: 35, shadows: [
                Shadow(
                    offset: Offset(3, 3), color: Colors.black38, blurRadius: 3),
              ]),
              iconColor: AppColor.primaryColor,
              textColor: AppColor.primaryColor,
              title: const Text(
                'الرسائل',
                style: TextStyle(
                  color: AppColor.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  shadows: [
                    Shadow(
                        offset: Offset(3, 3),
                        color: Colors.black38,
                        blurRadius: 3),
                  ],
                ),
              ),
              onTap: () => Get.to(const ChatScreen()),
            ),
            ListTile(
              leading:
                  const Icon(Icons.notifications_sharp, size: 35, shadows: [
                Shadow(
                    offset: Offset(3, 3), color: Colors.black38, blurRadius: 3),
              ]),
              iconColor: AppColor.primaryColor,
              textColor: AppColor.primaryColor,
              title: const Text(
                'الطلبات',
                style: TextStyle(
                  color: AppColor.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  shadows: [
                    Shadow(
                        offset: Offset(3, 3),
                        color: Colors.black38,
                        blurRadius: 3),
                  ],
                ),
              ),
              onTap: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text(
                    'الطلبات الواردة',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  content: const Text(
                    'لايوجد',
                    textAlign: TextAlign.right,
                  ),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'تخطي'),
                      child: const Text('تخطي'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('رد'),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person, size: 35, shadows: [
                Shadow(
                    offset: Offset(5, 3), color: Colors.black38, blurRadius: 3),
              ]),
              iconColor: AppColor.primaryColor,
              textColor: AppColor.primaryColor,
              title: const Text(
                'الملف الشخصي',
                style: TextStyle(
                  color: AppColor.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  shadows: [
                    Shadow(
                        offset: Offset(3, 3),
                        color: Colors.black38,
                        blurRadius: 3),
                  ],
                ),
              ),
            onTap: () => Get.to(const MyProfil()),
            ),
            const ListTile(
              leading: Icon(Icons.power_settings_new_sharp,
                  size: 35,
                  shadows: [
                    Shadow(
                        offset: Offset(3, 3),
                        color: Colors.black38,
                        blurRadius: 3),
                  ]),
              iconColor: AppColor.primaryColor,
              textColor: AppColor.primaryColor,
              title: Text(
                'تسجيل خروج',
                style: TextStyle(
                  color: AppColor.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  shadows: [
                    Shadow(
                        offset: Offset(3, 3),
                        color: Colors.black38,
                        blurRadius: 3),
                  ],
                ),
              ),
              // onTap: () => Get.to(Signin()),
            ),
          ],
        ));
  }
}
