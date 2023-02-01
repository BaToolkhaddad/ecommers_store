import 'package:ecommers_store/data/model/product_model.dart';

import '../../../constant/imgaeasset.dart';
import '../../model/onboardingmodel.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      title: "لمحة عن التطبيق !",
      body: 'يسمح لك هذا التطبيق بعرض المنتجات المتوفرة في متجرنا ',
      image: AppImageAsset.onBoardingImageOne),
  OnBoardingModel(
      title: "لمحة عن التطبيق !",
      body: 'يسمح لك هذا التطبيق أيضا بحجز المنتجات التي تريدها ',
      image: AppImageAsset.onBoardingImageTwo),
  OnBoardingModel(
      title: "لمحة عن التطبيق !",
      body: 'و يمكنك الدفع بشكل الكتروني',
      image: AppImageAsset.onBoardingImageThree),
];

List<AllProductModel> productList = [
  AllProductModel(
    id: '1',
    title: "فستان",
    price: '5000',
    discription: 'متوفر كافة الألوان و الموديلات',
    image: AppImageAsset.dress,
    isFavorite: false,
  ),
 
  
];
//____________________________________________________

String? dropdownValuetypeacount = 'نوع الحساب';
List<String> dropdownItemstypeacount = <String>[
  'نوع الحساب',
  'مدير المتجر',
  ' زبون',
];
