
import 'package:flutter/material.dart';

import '../../../constant/color.dart';
import '../../../data/datasource/static/static.dart';

class PrductImage extends StatelessWidget {
  const PrductImage({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(margin: const EdgeInsets.symmetric(vertical: 20),
    height: size.width*.8,
                     
    child: Stack(
      alignment: Alignment.bottomCenter,
      children: [
      Container(
        height: size.width*.7,
        width: size.width*.7,
        decoration: const BoxDecoration(color: AppColor.white,
        shape: BoxShape.circle,
        
        
        ),
      ),
      Image.asset( productList[0].image!,
      height: size.width*.75,
      width: size.width*.75,
      fit: BoxFit.cover,
      ),
      
    ]),
    );
  }
}