
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/color.dart';
import '../../controller/onboarding_controller.dart';
import '../../data/datasource/static/static.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
              children: [
                const SizedBox(height: 20),
                Text(
                  onBoardingList[i].title!,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      shadows: [
                        const Shadow(
                            offset: Offset(7, 7),
                            color: Colors.black38,
                            blurRadius: 7),
                        Shadow(
                            offset: const Offset(-6, -6),
                            color: Colors.white.withOpacity(0.85),
                            blurRadius: 7)
                      ],
                      color: AppColor.primaryColor),
                ),
                const SizedBox(height: 30),
                Container(
                  width: 300,
                  height: 230,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.8),
                        offset: const Offset(-6.0, -6.0),
                        blurRadius: 16.0,
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: const Offset(9.0, 9.0),
                        blurRadius: 0.1,
                      ),
                    ],
                    color: const Color(0xFFEFEEEE),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Image.asset(
                    onBoardingList[i].image!,
                   
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    onBoardingList[i].body!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        shadows: [
                          const Shadow(
                              offset: Offset(6, 6),
                              color: Colors.black38,
                              blurRadius: 5),
                          Shadow(
                              offset: const Offset(-6, -6),
                              color: Colors.white.withOpacity(0.85),
                              blurRadius: 7)
                        ],
                        color: AppColor.primaryColor),
                  ),
                ),
              ],
            ));
  }
}
