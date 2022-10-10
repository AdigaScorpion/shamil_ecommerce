import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shamil_ecommerce/core/class/statusrequest.dart';
import 'package:shamil_ecommerce/core/constant/routes.dart';
import 'package:shamil_ecommerce/core/functions/handlingdata.dart';
import 'package:shamil_ecommerce/core/services/services.dart';
import 'package:shamil_ecommerce/data/datasource/remot/auth/login.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class LogInControllerImp extends LoginController {
  LoginData logInData = LoginData(Get.find());

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  StatusRequest? statusRequest;
  Myservices myservices = Get.find();

  late TextEditingController email;
  late TextEditingController password;

  bool isshowpassword = true;

  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  login() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      var response = await logInData.postdata(email.text, password.text);
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success PHP") {
          myservices.sharedPreferences
              .setInt("id", response['data']['users_id']);
          myservices.sharedPreferences
              .setString("username", response['data']['users_name']);
          myservices.sharedPreferences
              .setString("email", response['data']['users_email']);
          myservices.sharedPreferences
              .setString("phone", response['data']['users_phone']);
          myservices.sharedPreferences.setString("step", "2");
          Get.offNamed(Approute.homePage);
        } else {
          Get.defaultDialog(
              title: "Warning", middleText: "Email Or Password is not correct");
          statusRequest = StatusRequest.failure;
        }
      } else {
        print(const Text("Something went wrong"));
      }
      update();
    }
    var formdata = formstate.currentState;
    if (formdata!.validate()) {}
  }

  @override
  goToSignUp() {
    Get.offNamed(Approute.signUp);
  }

  @override
  goToForgetPassword() {
    Get.toNamed(Approute.checkEmail);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
