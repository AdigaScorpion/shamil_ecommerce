import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shamil_ecommerce/controller/items.dart';
import 'package:shamil_ecommerce/data/model/itemsmodel.dart';
import 'package:shamil_ecommerce/view/widget/customappbar.dart';
import 'package:shamil_ecommerce/core/class/handling_data_view.dart';
import 'package:shamil_ecommerce/view/widget/items/customlistitems.dart';
import 'package:shamil_ecommerce/view/widget/items/listcategoriesitems.dart';

class ItemsPage extends StatelessWidget {
  const ItemsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerImp());
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(children: [
          CustomAppBar(
            titleappbar: "62".tr,
            onPressednotification: () {},
            onPressedsearch: () {},
          ),
          SizedBox(height: 15),
          ListCategoriesItems(),
          GetBuilder<ItemsControllerImp>(
            builder: (controller) => HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: controller.data.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 0.6),
                  itemBuilder: (BuildContext Context, index) {
                    return CustomListItems(
                        itemsModel:
                            ItemsModel.fromJson(controller.data[index]));
                  }),
            ),
          ),
        ]),
      ),
    );
  }
}
