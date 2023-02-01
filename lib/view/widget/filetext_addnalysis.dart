// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../constant/color.dart';

class AddNalysisTextFormAuth extends StatelessWidget{
   final String hintText;
   final String labelText;
   final IconData iconData;
   final TextEditingController? mycontroller;
  const AddNalysisTextFormAuth({super.key,
  required this.hintText,
  required this.labelText,
  required this.iconData,
   this.mycontroller, 
   required TextInputType keyboardType,
  
  });
  
  @override
  Widget build(BuildContext context) {
  return TextFormField(
    textAlign: TextAlign.right,
    cursorColor: AppColor.primaryColor,
    decoration: InputDecoration(
      focusColor: AppColor.primaryColor,
    hintText: hintText,
    hintStyle: const TextStyle(fontSize: 10),
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
    label: Container(
      margin: const EdgeInsets.symmetric(horizontal: 9),
      child: Text(labelText,textAlign: TextAlign.right,style: TextStyle(color :AppColor.primaryColor,fontSize: 20,fontWeight: FontWeight.bold),)),
      prefixIcon: Icon(iconData),
      border:  OutlineInputBorder(
        borderRadius: BorderRadius.only(
    topLeft: Radius.circular(30),
    bottomRight: Radius.circular(30),

      ))
  
      
    )

    
    
    
    
    
    );
  }





}