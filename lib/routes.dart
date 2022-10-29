import 'package:get/get.dart';
import 'package:shamil_ecommerce/view/screen/language.dart';
import 'package:shamil_ecommerce/core/constant/routes.dart';
import 'package:shamil_ecommerce/view/screen/itemspage.dart';
import 'package:shamil_ecommerce/view/screen/auth/login.dart';
import 'package:shamil_ecommerce/view/screen/onboarding.dart';
import 'package:shamil_ecommerce/view/screen/homescreen.dart';
import 'package:shamil_ecommerce/view/screen/itemsdetails.dart';
import 'package:shamil_ecommerce/core/middleware/mymiddleware.dart';
import 'package:shamil_ecommerce/view/screen/auth/signup/Signup.dart';
import 'package:shamil_ecommerce/view/screen/auth/signup/successsignup.dart';
import 'package:shamil_ecommerce/view/screen/auth/signup/verifycodesignup.dart';
import 'package:shamil_ecommerce/view/screen/auth/forgetpassword/checkemail.dart';
import 'package:shamil_ecommerce/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:shamil_ecommerce/view/screen/auth/forgetpassword/successresetpassword.dart';
import 'package:shamil_ecommerce/view/screen/auth/forgetpassword/verifycodeForgetpassword.dart';

List<GetPage<dynamic>>? routes = [
  // ========================== Auth ==============================//
  GetPage(
      name: "/", page: () => const Language(), middlewares: [MyMiddleware()]),
  GetPage(name: Approute.login, page: () => const LogIn()),
  GetPage(name: Approute.signUp, page: () => const SignUp()),
  GetPage(name: Approute.checkEmail, page: () => const CheckEmail()),
  GetPage(name: Approute.verifyCode, page: () => const VerifyCode()),
  GetPage(name: Approute.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: Approute.successResetPassword,
      page: () => const SuccessResetPassword()),
  GetPage(name: Approute.successSignUp, page: () => const SuccessSignUp()),
  // =======================  OnBoarding  ========================//
  GetPage(name: Approute.onBoarding, page: () => const OnBoarding()),
  GetPage(
      name: Approute.verifyCodeSignUp, page: () => const VerifyCodeSignUp()),
  //========================= HomePage ===========================//
  GetPage(name: Approute.homePage, page: () => const HomeScreen()),
  GetPage(name: Approute.items, page: () => const ItemsPage()),
  GetPage(name: Approute.itemsDetails, page: () => const ItemsDetails()),
];
