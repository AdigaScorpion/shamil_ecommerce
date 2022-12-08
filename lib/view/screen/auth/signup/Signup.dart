import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shamil_ecommerce/core/constant/color.dart';
import 'package:shamil_ecommerce/core/functions/validinput.dart';
import 'package:shamil_ecommerce/view/widget/auth/textsignup.dart';
import 'package:shamil_ecommerce/core/functions/app_exit_alert.dart';
import 'package:shamil_ecommerce/view/widget/auth/custombotton.dart';
import 'package:shamil_ecommerce/view/widget/auth/customtextbody.dart';
import 'package:shamil_ecommerce/view/widget/auth/customtextform.dart';
import 'package:shamil_ecommerce/controller/auth/signup_controller.dart';
import 'package:shamil_ecommerce/view/widget/auth/customtexttitleauth.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Appcolor.backGroundColor,
        elevation: 0.0,
        title: Text('17'.tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: Appcolor.grey)),
      ),
      body: WillPopScope(
          onWillPop: appexitalert,
          child: GetBuilder<SignUpControllerImp>(
              builder: (controller) => Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30),
                    child: Form(
                      key: controller.formstate,
                      child: ListView(children: [
                        const SizedBox(height: 20),
                        CustomTextTitleAuth(text: "3".tr),
                        const SizedBox(height: 10),
                        CustomTextBody(text: "55".tr),
                        const SizedBox(height: 15),
                        CustomTextFormAuth(
                          isnumber: false,
                          valid: (val) {
                            return validinput(val!, 3, 20, "username");
                          },
                          mycontroller: controller.username,
                          hintText: "23".tr,
                          icondata: Icons.person_outline,
                          labletext: "20".tr,
                          // mycontroller: ,
                        ),
                        CustomTextFormAuth(
                          isnumber: false,
                          valid: (val) {
                            return validinput(val!, 3, 40, "email");
                          },
                          mycontroller: controller.email,
                          hintText: "12".tr,
                          icondata: Icons.email_outlined,
                          labletext: "18".tr,
                          // mycontroller: ,
                        ),
                        CustomTextFormAuth(
                          isnumber: true,
                          valid: (val) {
                            return validinput(val!, 7, 11, "phone");
                          },
                          mycontroller: controller.phone,
                          hintText: "22".tr,
                          icondata: Icons.phone_android_outlined,
                          labletext: "21".tr,
                          // mycontroller: ,
                        ),
                        GetBuilder<SignUpControllerImp>(
                            builder: (controller) => CustomTextFormAuth(
                                  onTapIcon: () {
                                    controller.showPassword();
                                  },
                                  obscureText: controller.isshowpassword,
                                  valid: (val) {
                                    return validinput(val!, 5, 30, "password");
                                  },
                                  mycontroller: controller.password,
                                  hintText: '13'.tr,
                                  icondata: Icons.lock_outline,
                                  labletext: '19'.tr,
                                  isnumber: false,
                                )),
                        const SizedBox(height: 10),
                        CustomBottonAuth(
                            text: "17".tr,
                            onPressed: () {
                              controller.signUp();
                            }),
                        const SizedBox(height: 100),
                        TextSignUp(
                          textone: '24'.tr,
                          texttwo: '25'.tr,
                          ontap: () {
                            controller.goToSignIn();
                          },
                        ),
                      ]),
                    ),
                  ))),
    );
  }
}
