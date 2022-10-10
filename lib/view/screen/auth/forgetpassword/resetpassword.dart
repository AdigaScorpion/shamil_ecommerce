import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:shamil_ecommerce/controller/forgotpassword/resetpassword.dart';
import 'package:shamil_ecommerce/core/class/statusrequest.dart';
import 'package:shamil_ecommerce/core/constant/imageasset.dart';
import 'package:shamil_ecommerce/view/widget/auth/customtextform.dart';
import 'package:shamil_ecommerce/view/widget/auth/customtilte.dart';
import '../../../../core/constant/color.dart';
import '../../../../core/functions/validinput.dart';
import '../../../widget/auth/customtextbody.dart';
import '../../../widget/auth/custombotton.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ResetPasswordImp());
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Appcolor.backGroundColor,
            elevation: 0.0,
            centerTitle: true,
            title: CustomTitleAuth(
              text: '41'.tr,
            )),
        body: GetBuilder<ResetPasswordImp>(
            builder: (controller) => controller.statusRequest ==
                    StatusRequest.loading
                ? Center(child: Lottie.asset(AppImageAsset.loading))
                : Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Form(
                        key: controller.formstate,
                        child: ListView(children: [
                          const SizedBox(height: 100),
                          Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              alignment: Alignment.center,
                              child: CustomTextBody(text: '43'.tr)),
                          const SizedBox(height: 40),
                          GetBuilder<ResetPasswordImp>(
                              builder: (controller) => CustomTextFormAuth(
                                    onTapIcon: () {
                                      controller.showPassword();
                                    },
                                    obscureText: controller.isshowpassword,
                                    valid: (val) {
                                      return validinput(
                                          val!, 5, 30, "password");
                                    },
                                    mycontroller: controller.password,
                                    hintText: '13'.tr,
                                    icondata: Icons.lock_outline,
                                    labletext: '19'.tr,
                                    isnumber: false,
                                  )),
                          GetBuilder<ResetPasswordImp>(
                              builder: (controller) => CustomTextFormAuth(
                                    onTapIcon: () {
                                      controller.showPassword();
                                    },
                                    obscureText: controller.isshowpassword,
                                    valid: (val) {
                                      return validinput(
                                          val!, 5, 30, "password");
                                    },
                                    mycontroller: controller.repassword,
                                    hintText: '13'.tr,
                                    icondata: Icons.lock_outline,
                                    labletext: '19'.tr,
                                    isnumber: false,
                                  )),
                          const SizedBox(height: 20),
                          CustomBottonAuth(
                            text: '32'.tr,
                            onPressed: () {
                              controller.goToSuccessResetPassword();
                            },
                          ),
                        ])),
                  )));
  }
}
