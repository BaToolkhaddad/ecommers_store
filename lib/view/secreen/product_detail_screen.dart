// ignore_for_file: prefer_const_constructors

import 'package:ecommers_store/constant/color.dart';
import 'package:ecommers_store/data/datasource/static/static.dart';
import 'package:flutter/material.dart';

import '../../data/model/product_model.dart';
import '../widget/details/details_body.dart';


class ProductDetailScreen extends StatelessWidget {
   final AllProductModel product;

   const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text(productList[0].title!, style: TextStyle(
              color: AppColor.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              // ignore: prefer_const_literals_to_create_immutables
              shadows: [
                Shadow(
                    offset: Offset(5, 5), color: Colors.black87, blurRadius: 5),
              ],
            ),),
        backgroundColor: AppColor.primaryColor,
      ),
      body: DetailsBody(product: product,)
      
      
    );
  }
}
