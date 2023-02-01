import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/color.dart';
import '../../data/datasource/static/static.dart';
import '../secreen/home_page.dart';
import '../widget/auth/customtextformauth_signin_or_signup.dart';



// ignore: must_be_immut, must_be_immutable


class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

 
  TextEditingController name = TextEditingController();
  TextEditingController id = TextEditingController();
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
                      top: 50, bottom: 10, right: 20, left: 20),
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
                          hintText: '  الإسم الكامل',
                          labelText: 'Full Name',
                           keyboardType: TextInputType.name,
                          iconData: Icons.person_outline,
                          mycontroller: name,
                           // key: ValueKey('id'),
                           validator: (val) {
                          if(val!.length > 50) {
                          }
                           if(val.isEmpty){
                               return 'value canot be Empty'; 
                              }
                           if(val.length < 4) {
         return 'Full name can not be less than 2 letter';

                          }
                          return null ;
                        },
                       
                        ),
                        SizedBox(
                          height: h * .03,
                        ),
                        CustomTextFormAuth(
                          hintText: ' الرقم الوطني',
                          labelText: 'id',
                          iconData: Icons.account_box_rounded,
                           keyboardType: TextInputType.number,
                          mycontroller: id,
                           // key: ValueKey('id'),
                           validator: (val) {
                          if(val!.length > 11) {
         return 'id can not be langer than 11 letter';

                          }
                           if(val.isEmpty){
                               return 'value canot be Empty'; 
                              }
                           if(val.length < 11) {
         return 'id can not be less than 11 letter';

                          }
                          return null ;
                        },
                       
                        ),
                        SizedBox(
                          height: h * .03,
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
                                "إنشاء حساب",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                   
                                    color: AppColor.primaryColor),
                              
                                    )))),
                      SizedBox(
                          height: h * 0.03,
                        ),
                       ]),
                    ),
                  ),
                ))));
  }
}






