import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shamil_ecommerce/controller/forgotpassword/checkemail.dart';
import 'package:shamil_ecommerce/core/class/statusrequest.dart';
import 'package:shamil_ecommerce/core/functions/validinput.dart';
import 'package:shamil_ecommerce/view/widget/auth/custombotton.dart';
import 'package:shamil_ecommerce/view/widget/auth/customtextbody.dart';
import 'package:shamil_ecommerce/view/widget/auth/customtextform.dart';
import 'package:shamil_ecommerce/view/widget/auth/customtilte.dart';
import '../../../../core/constant/color.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CheckEmailImp());
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Appcolor.backGroundColor,
          elevation: 0.0,
          centerTitle: true,
          title: CustomTextBody(
            text: '14'.tr,
          )),
      body: GetBuilder<CheckEmailImp>(
          builder: (controller) => controller.statusRequest ==
                  StatusRequest.loading
              ? Center(child: Text("Loading ..."))
              : Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                  child: Form(
                      key: controller.formstate,
                      child: ListView(children: [
                        const SizedBox(height: 15),
                        CustomTitleAuth(
                          text: '26'.tr,
                        ),
                        const SizedBox(height: 20),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text("28".tr,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyText1),
                        ),
                        const SizedBox(height: 40),
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
                        CustomBottonAuth(
                          text: '29'.tr,
                          onPressed: () {
                            controller.checkemail();
                          },
                        ),
                      ])),
                )),
    );
  }
}
