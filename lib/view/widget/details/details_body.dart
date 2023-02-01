import 'package:ecommers_store/data/model/product_model.dart';
import 'package:ecommers_store/view/widget/details/color_dot.dart';
import 'package:ecommers_store/view/widget/details/product_image.dart';
import 'package:flutter/material.dart';

import '../../../constant/color.dart';
import '../../../data/datasource/static/static.dart';

class DetailsBody extends StatelessWidget {
  final AllProductModel product;

   const DetailsBody({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              color: AppColor.white,
              backgroundBlendMode: BlendMode.colorDodge,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
              boxShadow: [
                BoxShadow(
                    //  offset: Offset(1, 5),
                    color: AppColor.primaryColor,
                    spreadRadius: 3,
                    blurRadius: 5),
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Center(child: PrductImage(size: size)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                    ColorDot(fillColor:AppColor.grey,
                   isSelected: true,),
                    ColorDot(fillColor:AppColor.primaryColor,
                   isSelected: false,),
                    ColorDot(fillColor:AppColor.secondColor,
                   isSelected: false,),
                  
                ],
              ),
            ),
           Padding(
             padding: const EdgeInsets.all(8),
             child: Text(productList[0].title! ,
                 style: const TextStyle(
                color: AppColor.primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                shadows: [
                  Shadow(
                      offset: Offset(5, 5), color: Colors.black38, blurRadius: 5),
                ],
              ),),
           ),
const SizedBox(height: 3,),
           Text('\$${productList[0].price}  السعر',
                 style: const TextStyle(
                color: AppColor.grey2,
                fontSize: 20,
            
              ),),

              
          ]),
        ),
        const SizedBox(height: 20,),
         Text('${productList[0].discription} ',
                 style: const TextStyle(
                color: AppColor.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                shadows: [
                  Shadow(
                      offset: Offset(5, 5), color: Colors.black38, blurRadius: 5),
                ],
              ),),

      ],
    );
  }
}
