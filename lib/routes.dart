import 'package:get/get.dart';
import 'package:shamil_ecommerce/core/middleware/mymiddleware.dart';
import 'package:shamil_ecommerce/view/screen/auth/forgetpassword/checkemail.dart';
import 'package:shamil_ecommerce/view/screen/auth/forgetpassword/verifycodeForgetpassword.dart';
import 'package:shamil_ecommerce/view/screen/homepage.dart';
import 'package:shamil_ecommerce/view/screen/language.dart';
import 'view/screen/auth/signup/verifycodesignup.dart';
import '../../core/constant/routes.dart';
import 'view/screen/auth/signup/Signup.dart';
import '../../view/screen/auth/login.dart';
import 'view/screen/auth/forgetpassword/resetpassword.dart';
import '../../view/screen/onboarding.dart';
import 'view/screen/auth/forgetpassword/successresetpassword.dart';
import 'view/screen/auth/signup/successsignup.dart';

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
  GetPage(name: Approute.homePage, page: () => const HomePage()),
];
