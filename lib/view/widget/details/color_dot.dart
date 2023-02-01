import 'package:flutter/material.dart';

import '../../../constant/color.dart';


class ColorDot extends StatelessWidget {
  const ColorDot({
    
    Key? key, required this.fillColor,  this.isSelected=false,
  }) : super(key: key);
final Color fillColor;
final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(3),
      height: 23,
      width: 23,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color:isSelected ? AppColor.primaryColor :AppColor.grey)),
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: fillColor),
      ),
    );
  }
}
