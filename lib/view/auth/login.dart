import 'package:ecommers_store/view/auth/rigester.dart';
import 'package:ecommers_store/view/secreen/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/color.dart';
import '../../data/datasource/static/static.dart';
import '../widget/auth/customtextformauth_signin_or_signup.dart';



// ignore: must_be_immut, must_be_immutable
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {



  TextEditingController phone = TextEditingController();
  TextEditingController passwordusr = TextEditingController();

 


  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SingleChildScrollView(
            child:  Container(
                height: h,
                width: w,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColor.primaryColor,
                        AppColor.white,
                      ]),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 60, bottom: 50, right: 20, left: 20),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(50),
                          topLeft: Radius.circular(50),
                        ),
                        boxShadow: [
                          BoxShadow(
                             // offset: Offset(10, 10),
                              color: AppColor.primaryColor,
                              blurRadius: 20),
                        ]),

                    // color: korg600,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(children: [
                        // SizedBox(
                        //   height: h * .02,
                        // ),
                        SizedBox(
                          height: h * .16,
                          width: w * .7,
                          child: const Icon(Icons.person,
                              color: AppColor.primaryColor,
                              size: 100,
                              shadows: [
                                BoxShadow(
                                    offset: Offset(5, 5),
                                    color: Color.fromARGB(221, 176, 173, 184),
                                    blurRadius: 3),
                              ]),
                        ),
                              Container(
    
          decoration: const BoxDecoration(
                              color: AppColor.white,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(30),
                                topLeft: Radius.circular(30),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 116, 113, 113),
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: Offset(
                                      1, 1), // changes position of shadow
                                ),
                              ],
                            ),
                           
            child: DropdownButtonFormField<String>(
              alignment: Alignment.centerRight,
              decoration: const InputDecoration(
                enabledBorder: InputBorder.none,
              ),
              // iconSize: 50,
              iconEnabledColor: AppColor.primaryColor,
              iconSize: 30,
              elevation: 8,
              dropdownColor: AppColor.white,
              value: dropdownValuetypeacount,

              onChanged: (newvalue) {
                setState(() {
                  dropdownItemstypeacount = newvalue as List<String>;
                });
              },
              // ignore: missing_return

              items: dropdownItemstypeacount
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Row(
                    children: [
                      SizedBox(
                        width: w * .5,
                      ),
                      Text(value),
                      
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
     SizedBox(
                          height: h * .05,
                        ),
                        
                      
                           CustomTextFormAuth(
                          hintText: 'رقم الهاتف',
                          labelText: 'phone',
                          iconData: Icons.phone_android,
                           keyboardType: TextInputType.number,
                          mycontroller: phone,
                           // key: ValueKey('id'),
                            validator: (val) {
                          if(val!.length > 20) {
         return 'Phone can not be langer than 20 letter';

                          }
                           if(val.isEmpty){
                               return 'value canot be Empty'; 
                              }
                           if(val.length < 10) {
         return 'Phone can not be less than 10 letter';

                          }
                          return null ;
                        },
                          
                        ),
                        SizedBox(
                          height: h * .03,
                        ),
                        
                        CustomTextFormAuth(
                          hintText: 'كلمة المرور',
                          labelText: 'PassWord',
                          iconData: Icons.remove_red_eye_outlined,
                          keyboardType: TextInputType.emailAddress,
                          mycontroller: passwordusr,
                           // key: ValueKey('id'),
                            validator: (val) {
                          if(val!.length > 30) {
         return 'PassWord can not be langer than 30 letter';

                          }
                           if(val.isEmpty){
                               return 'value canot be Empty'; 
                              }
                           if(val.length < 9) {
         return 'PassWord can not be less than 9 letter';

                          }
                          return null ;
                        },

                        ),
                        SizedBox(
                          height: h * .07,
                        ),
                          Container(
                            decoration:  const BoxDecoration(
                                color: AppColor.white,
                                backgroundBlendMode: BlendMode.colorDodge,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(50),
                                  topLeft: Radius.circular(50),
                                ),
                               boxShadow: [
                                  BoxShadow(
                                     offset: Offset(1, 5),
                                      color: AppColor.primaryColor,
                                      spreadRadius: 2,
                                      blurRadius: 5),
                                ]),
                            width: MediaQuery.of(context).size.width * .7,
                            height: MediaQuery.of(context).size.height * .09,
                            child:TextButton(
                                    onPressed: () {
                                     Get.to(const HomeSecreen());
                                    },
                                    child: const Center(
                                      child:Text(
                                " تسجيل دخول",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                   
                                    color: AppColor.primaryColor),
                              
                                    )))),
                      SizedBox(
                          height: h * 0.05,
                        ),

                        Container(
                            decoration: const BoxDecoration(),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                    child: const Text(
                                      "انشاء حساب",
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          decorationStyle:
                                              TextDecorationStyle.wavy,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17,
                                          shadows: [
                                            Shadow(
                                                offset: Offset(6, 6),
                                                color: Colors.black38,
                                                blurRadius: 3),
                                          ],
                                          color: AppColor.primaryColor),
                                    ),
                                    onPressed: () {
                                      Get.to(const SignUp());
                                    }),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * .01,
                                ),
                                const Text(
                                  "هل لديك حساب ؟",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      shadows: [
                                        Shadow(
                                            offset: Offset(5, 5),
                                            color: Colors.black38,
                                            blurRadius: 3),
                                      ],
                                      color: AppColor.primaryColor),
                                ),
                              ],
                            ),
                          ),
                       ]),
                    ),
                  ),
                ))));
  }
}






