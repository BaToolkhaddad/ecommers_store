import 'dart:io';

import 'package:ecommers_store/routes.dart';
import 'package:ecommers_store/view/secreen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constant/color.dart';



  class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  runApp( 
    
   const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Cairo",
        textTheme: const TextTheme(
            headline1: TextStyle(fontWeight: FontWeight.bold, fontSize: 17 , color: AppColor.black),
            bodyText1: TextStyle(
                height: 2,
                color: AppColor.grey,
                fontWeight: FontWeight.bold,
                fontSize: 17)),
        primarySwatch: Colors.blue,
      ),
      home: const OnBoarding(),
      getPages: routes,
    );
  }
}
