
import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';

import '../../constant/color.dart';
import '../widget/bottom_appbar.dart';
import '../widget/drawer.dart';

class MyProfil extends StatefulWidget {
  const MyProfil({Key? key}) : super(key: key);

  @override
  State<MyProfil> createState() => _MyProfilState();
}

class _MyProfilState extends State<MyProfil> {
  @override
  Widget build(BuildContext context) {
    final mdw = MediaQuery.of(context).size.width;
    final mdh = MediaQuery.of(context).size.height;

    return Scaffold(
        drawer: const AppDrawer(),
        bottomNavigationBar: const AppBarBottomWidget(),
        body: SafeArea(
            child: Stack(children: [
          Positioned(
            child: Transform.scale(
              scale: 2,
              child: Transform.translate(
                  offset: Offset(0, -mdw * 0.7),
                  child: Center(
                    child: Container(
                      width: mdw,
                      height: mdw,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(mdw),
                          color: AppColor.primaryColor),
                    ),
                  )),
            ),
          ),
       

          SizedBox(height: mdh * .15),
          Positioned(
            top: mdh * .10,
            left: mdw * .37,
            child: const Center(
                child: GFAvatar(
              size: 70,
              backgroundColor: AppColor.white,
              child: Icon(
                Icons.person,
                color: AppColor.primaryColor,
                size: 70,
                 shadows: [
                                  BoxShadow(
                                      offset: Offset(5, 5),
                                      color: Color.fromARGB(221, 176, 173, 184),
                                      blurRadius: 3),
                                ]),
                          ),
              ),
          
          ),

          Positioned(
              top: mdh * .27,
              left: mdw * .35,
              child: const Align(
                alignment: Alignment.center,
                child: Text("بتول الحداد             ",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold, fontSize: 23,
                      //fontFamily: 'TrajanPro' )
                    )),
              )),

          Positioned(
              top: mdh * .45,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: mdw * .1),
                width: mdw,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'المعلومات الشخصية ',
                      textAlign: TextAlign.right,
                        style: TextStyle(
                  color: AppColor.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  shadows: [
                    Shadow(
                        offset: Offset(3, 3),
                        color: Colors.black38,
                        blurRadius: 3),
                  ],
                ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .03),

                    SizedBox(height: MediaQuery.of(context).size.height * .02),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text("أنثى",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .02,
                        ),
                        const Text(" : الجنس   ",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),

                    SizedBox(height: MediaQuery.of(context).size.height * .02),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text("0999999999",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .02,
                        ),
                        const Text(" : رقم الهاتف   ",
                            textAlign: TextAlign.right,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),

                    // SizedBox(height: MediaQuery.of(context).size.height*.02),
                  ],
                ),
              )),
        ])));
  }
}
