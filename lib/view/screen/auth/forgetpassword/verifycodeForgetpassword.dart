import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:shamil_ecommerce/controller/forgotpassword/verifycodeforgetpassword.dart';
import 'package:shamil_ecommerce/core/constant/color.dart';
import 'package:shamil_ecommerce/view/widget/auth/customtextbody.dart';
import 'package:shamil_ecommerce/view/widget/auth/customtilte.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerifyCodeForgetPasswordImp controller =
        Get.put(VerifyCodeForgetPasswordImp());
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Appcolor.backGroundColor,
          elevation: 0.0,
          centerTitle: true,
          title: CustomTextBody(
            text: '44'.tr,
          )),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
        child: ListView(children: [
          const SizedBox(height: 15),
          CustomTitleAuth(
            text: '29'.tr,
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Text("45".tr,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText1),
          ),
          const SizedBox(height: 40),
          OtpTextField(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            numberOfFields: 5,
            borderColor: const Color(0XFF512DA8),
            showFieldAsBox: true,
            onCodeChanged: (String code) {},
            onSubmit: (String verificationCode) {
              controller.goToResetPassword(verificationCode);
            },
          ),
        ]),
      ),
    );
  }
}
