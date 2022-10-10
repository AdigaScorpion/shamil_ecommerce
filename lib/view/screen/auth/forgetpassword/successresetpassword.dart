import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shamil_ecommerce/controller/auth/successresetpassword.dart';
import '../../../../core/constant/color.dart';
import '../../../widget/auth/custombotton.dart';
import '../../../widget/auth/customtextbody.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordImp controller = Get.put(SuccessResetPasswordImp());
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Appcolor.backGroundColor,
          elevation: 0.0,
          centerTitle: true,
          title: CustomTextBody(
            text: '31'.tr,
          )),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          const Center(
            child: Icon(
              Icons.check_circle_outline,
              size: 200,
              color: Appcolor.primaryColor,
            ),
          ),
          const Spacer(),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              width: double.infinity,
              child: CustomBottonAuth(
                  text: '2'.tr,
                  onPressed: () {
                    controller.goToLogIn();
                  })),
          const SizedBox(height: 30)
        ]),
      ),
    );
  }
}
