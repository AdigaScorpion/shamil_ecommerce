import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shamil_ecommerce/core/class/statusrequest.dart';
import 'package:shamil_ecommerce/core/constant/imageasset.dart';
import 'package:shamil_ecommerce/core/functions/validinput.dart';
import '../../../controller/auth/login_controller.dart';
import '../../../core/functions/app_exit_alert.dart';
import '../../../view/widget/auth/logo.dart';
import '../../../core/constant/color.dart';
import '../../widget/auth/customtextform.dart';
import '../../widget/auth/customtilte.dart';
import '../../widget/auth/custombotton.dart';
import '../../widget/auth/textsignup.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(LogInControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Appcolor.backGroundColor,
          elevation: 0.0,
          centerTitle: true,
          title: CustomTitleAuth(
            text: '25'.tr,
          ),
        ),
        body: WillPopScope(
          onWillPop: appexitalert,
          child: GetBuilder<LogInControllerImp>(
              builder: (controller) => controller.statusRequest ==
                      StatusRequest.loading
                  ? Center(child: Lottie.asset(AppImageAsset.loading))
                  : Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 35),
                      child: Form(
                        key: controller.formstate,
                        child: ListView(children: [
                          const LogoImage(),
                          const SizedBox(height: 15),
                          CustomTitleAuth(
                            text: '3'.tr,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text("4".tr,
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyText1),
                          ),
                          const SizedBox(height: 15),
                          CustomTextFormAuth(
                            obscureText: false,
                            valid: (val) {
                              return validinput(val!, 5, 50, "email");
                            },
                            mycontroller: controller.email,
                            hintText: '12'.tr,
                            icondata: Icons.email_outlined,
                            labletext: '18'.tr,
                            isnumber: false,
                          ),
                          GetBuilder<LogInControllerImp>(
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
                          Container(
                            margin: const EdgeInsets.all(10),
                            child: InkWell(
                                onTap: () {
                                  controller.goToForgetPassword();
                                },
                                child: Text(
                                  '14'.tr,
                                  textAlign: TextAlign.end,
                                )),
                          ),
                          CustomBottonAuth(
                            text: '11'.tr,
                            onPressed: () {
                              controller.login();
                            },
                          ),
                          const SizedBox(height: 50),
                          TextSignUp(
                            textone: '16'.tr,
                            texttwo: '17'.tr,
                            ontap: () {
                              controller.goToSignUp();
                            },
                          ),
                        ]),
                      ),
                    )),
        ));
  }
}
