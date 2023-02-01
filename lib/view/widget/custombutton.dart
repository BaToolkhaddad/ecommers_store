
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/color.dart';
import '../../controller/onboarding_controller.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return  Container(
                            decoration: const BoxDecoration(
                              color: AppColor.primaryColor,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(50),
                                topLeft: Radius.circular(50),
                              ),
                          boxShadow: [
        BoxShadow(
            offset: Offset(10, 10),
            color: Colors.black38,
            blurRadius: 3),
     
      ]),
                            
                            width: MediaQuery.of(context).size.width * .7,
                            height: MediaQuery.of(context).size.height * .08,
                            child: Center(
                              child:  TextButton(
                                onPressed: () {
                                    controller.next() ; 

                                },
                                
                                       child:const Text(" التالي",
                                        style: TextStyle(
                                            color:AppColor.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                            )));
                       
  }
}
