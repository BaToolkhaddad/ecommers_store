
import 'package:ecommers_store/view/auth/login.dart';
import 'package:ecommers_store/view/auth/rigester.dart';
import 'package:ecommers_store/view/secreen/onboarding.dart';
import 'package:get/get.dart';

import 'constant/routes.dart';



List<GetPage<dynamic>>? routes = [

  GetPage(name: AppRoute.login, page: () =>   const Login()),
   GetPage(name: AppRoute.signUp, page: () =>  const SignUp()),
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),
 
  // GetPage(name: AppRoute.homepage, page: () => const HomeSecreen()), 

];
