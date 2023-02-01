
import 'package:flutter/material.dart';

import '../../../constant/color.dart';

class CustomTextFormAuth extends StatelessWidget{
   final String hintText;
   final String labelText;
   final IconData iconData;
  final TextInputType keyboardType;
   final TextEditingController? mycontroller;
  const CustomTextFormAuth({super.key,
  required this.hintText,
  required this.labelText,
  required this.iconData,
   this.mycontroller,
   required String? Function(dynamic val) validator,
   void Function(String?)? onSaved,
    required this.keyboardType,
  });
  
  @override
  Widget build(BuildContext context) {
  return TextFormField(
    
     textAlign: TextAlign.right,
    decoration: InputDecoration(
    hintText: hintText,
    hintStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    
                      ),
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
    label: Container(
      margin: const EdgeInsets.symmetric(horizontal: 9),
      child: Text(labelText ,  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                      shadows: [
                         Shadow(
                            offset: Offset(9, 9),
                            color: Colors.black38,
                            blurRadius: 5),
                       
                      ],
                      color: AppColor.primaryColor),),),
      suffixIcon: Icon(iconData, shadows: const [
                         Shadow(
                            offset: Offset(5, 5),
                            color: Colors.black38,
                            blurRadius: 6),
                       
                      ],),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))
      
    )

    
    
    
    
    
    );
  }





}