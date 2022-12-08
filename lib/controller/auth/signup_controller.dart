import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shamil_ecommerce/core/constant/routes.dart';
import 'package:shamil_ecommerce/core/class/statusrequest.dart';
import 'package:shamil_ecommerce/core/functions/handlingdata.dart';
import 'package:shamil_ecommerce/data/datasource/remot/auth/signup_data.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToSignIn();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;

  late StatusRequest statusRequest;

  SignupData signupData = SignupData(Get.find());

  List data = [];

  @override
  signUp() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      var response = await signupData.postdata(
          username.text, password.text, email.text, phone.text);
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success PHP") {
          Get.offNamed(Approute.verifyCodeSignUp,
              arguments: {"email": email.text});
        } else {
          Get.defaultDialog(
              title: "Warning",
              middleText: "Phone No. Or Email Is Already Exists");
          statusRequest = StatusRequest.failure;
        }
      } else {
        print(const Text("Something went wrong"));
      }
      update();
    }
  }

  @override
  goToSignIn() {
    Get.offNamed(Approute.login);
  }

  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }

  bool isshowpassword = true;
  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }
}
