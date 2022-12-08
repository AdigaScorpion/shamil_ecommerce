import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shamil_ecommerce/controller/test_data_controller.dart';
import 'package:shamil_ecommerce/core/class/handling_data_view.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
        appBar: AppBar(
            title: const Text("*** Your Data ***",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
        body: GetBuilder<TestController>(builder: (controller) {
          return HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: ListView.builder(
                  itemCount: controller.data.length,
                  itemBuilder: (context, index) {
                    return Text("${controller.data}");
                  }));
        }));
  }
}
