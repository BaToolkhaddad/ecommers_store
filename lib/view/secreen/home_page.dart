
import 'package:ecommers_store/data/datasource/static/static.dart';
import 'package:ecommers_store/view/secreen/product_detail_screen.dart';
import 'package:ecommers_store/view/widget/bottom_appbar.dart';
import 'package:ecommers_store/view/widget/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share/share.dart';

import 'package:getwidget/getwidget.dart';

import '../../constant/color.dart';

class HomeSecreen extends GetView {
  const HomeSecreen({super.key});

   
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: GFAppBar(
          backgroundColor: AppColor.white,
          title: const Text(
            "الصفحة الرئيسية",
            style: TextStyle(
              color: AppColor.primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              shadows: [
                Shadow(
                    offset: Offset(5, 5), color: Colors.black38, blurRadius: 5),
              ],
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Share.share(
                      'http://play.google.com/store/apps/details?id=com.instructivetech.testapp');
                },
                icon: const Icon(
                  Icons.share,
                  color: AppColor.primaryColor,
                  size: 30,
                  shadows: [
                    Shadow(
                        offset: Offset(3, 3),
                        color: Colors.black38,
                        blurRadius: 3),
                  ],
                ))
          ],
        
      
          iconTheme: const IconThemeData(
              color: AppColor.primaryColor,
              shadows: [
                Shadow(
                    offset: Offset(3, 3), color: Colors.black38, blurRadius: 3),
              ],
              size: 30),
        ),
        bottomNavigationBar: const AppBarBottomWidget(),
        drawer: const AppDrawer(),
        body: Container(
            height: h * .99,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColor.white,
                    AppColor.white,
                  ]),
            ),
            child: ListView.builder(
              itemCount: productList.length,
              itemBuilder: (context, i) => Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: AppColor.white,
                          backgroundBlendMode: BlendMode.colorDodge,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(50),
                            topLeft: Radius.circular(50),
                          ),
                          boxShadow: [
                            BoxShadow(
                                //  offset: Offset(1, 5),
                                color: AppColor.primaryColor,
                                spreadRadius: 3,
                                blurRadius: 5),
                          ]),
                      child: GFCard(
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(50),
                          topLeft: Radius.circular(50),
                        ),
                        gradient: const LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            AppColor.white,
                            AppColor.white,
                          ],
                        ),
                        height: h * .4,
                        title: GFListTile(
                          avatar: SizedBox(
                            height: h * .1,
                            width: w * .2,
                            child: GFAvatar(
                              backgroundImage: AssetImage(productList[i].image!),
                            ),
                          ),
                          title: Text(
                            productList[i].title!,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: AppColor.primaryColor,
                              shadows: [
                                Shadow(
                                    offset: Offset(3, 3),
                                    color: Colors.black38,
                                    blurRadius: 3),
                              ],
                            ),
                          ),
                           subTitle: Text('\$${productList[0].price}  السعر',),
                        ),
                         
                        content: Text(
                          productList[i].discription!,
                          style: const TextStyle(
                            fontSize: 17,
                            color: AppColor.primaryColor,
                            shadows: [
                              Shadow(
                                  offset: Offset(3, 3),
                                  color: Colors.black38,
                                  blurRadius: 5),
                            ],
                          ),
                        ),
                        buttonBar: GFButtonBar(
                          children: <Widget>[
                            SizedBox(
                              height: h * .02,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                              

    const CircleAvatar(
                                     backgroundColor: GFColors.LIGHT,
                                    child: IconButton(
                                        onPressed: null,
                                        icon: Icon(
                                          Icons.favorite_border,
                                          color: AppColor.secondColor,
                                        ))),
                                          const CircleAvatar(
                                  backgroundColor: GFColors.LIGHT,
                                    child: IconButton(
                                       onPressed :null,
                                        icon: Icon(
                                          Icons.shopping_cart,
                                          color: AppColor.primaryColor,
                                        ))) ,
                                            Container(
                                    decoration: const BoxDecoration(
                                      color: AppColor.white,
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(50),
                                        topLeft: Radius.circular(50),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: AppColor.primaryColor,
                                          spreadRadius: 1,
                                          blurRadius: 5,
                                          //  offset: Offset(  1, 1), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    width: w * .35,
                                    height: h * .07,
                                    child: TextButton(
                                        onPressed: () {
                                      Get.to( ProductDetailScreen(product: productList[0],));
                                          },
                                        child: const Text(
                                          'تفاصيل',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: AppColor.primaryColor,
                                              fontSize: 15),
                                        )),
                                  ),
                                                               
                          ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}

