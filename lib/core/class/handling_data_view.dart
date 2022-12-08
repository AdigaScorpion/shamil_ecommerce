import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:shamil_ecommerce/core/class/statusrequest.dart';
import 'package:shamil_ecommerce/core/constant/imageasset.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;

  const HandlingDataView(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(child: Lottie.asset(AppImageAsset.loading))
        : statusRequest == StatusRequest.noconnection
            ? const Center(
                child: Text("You Are Offline \n Check Your Connection"))
            : statusRequest == StatusRequest.serverfailure
                ? const Center(child: Text("Server Failure"))
                : statusRequest == StatusRequest.failure
                    ? const Center(
                        child: Text("Something Went Wrong",
                            style: TextStyle(fontSize: 30)))
                    : widget;
  }
}
