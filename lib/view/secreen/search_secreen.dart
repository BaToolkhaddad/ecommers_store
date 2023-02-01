// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

import '../../constant/color.dart';
import '../widget/bottom_appbar.dart';
import '../widget/drawer.dart';
import '../widget/search_widget.dart';




class SearchSecreen extends GetView {
  const SearchSecreen({super.key});

  @override
 
  Widget build(BuildContext context) {
  

    return Scaffold(

        //  bottomNavigationBar: BottomBar(),
        // drawer: const AppDrawer(),
        appBar:  GFAppBar(
          backgroundColor: AppColor.white,
          title: const Text(
            "البحث",
            style: TextStyle(
              color: AppColor.primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              shadows: [
                Shadow(
                    offset: Offset(9, 9), color: Colors.black38, blurRadius: 5),
              ],
            ),
          ),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
      
               Icon(Icons.search, size: 35,
                  // ignore: prefer_const_literals_to_create_immutables
                  shadows: [
                    Shadow(
                        offset: Offset(7, 3),
                        color: Colors.black38,
                        blurRadius: 3),]),
                         SizedBox(width: 20,),
          ],
        
      
          iconTheme: const IconThemeData(
              color: AppColor.primaryColor,
              shadows: [
                Shadow(
                    offset: Offset(5, 5), color: Colors.black38, blurRadius: 5),
              ],
              size: 30),
        ),
        bottomNavigationBar: const AppBarBottomWidget(),
        drawer: const AppDrawer(),
      
    
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child:
                SearchWidget(),
        )
              
        );
  }
}
