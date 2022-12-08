class ItemsModel {
  int? itemsId;
  String? itemsName;
  String? itemsNameAr;
  String? itemsNameDesc;
  String? itemsNameDescAr;
  String? itemsImage;
  int? itemsCount;
  int? itemsActive;
  int? itemsPrice;
  int? itemsDiscount;
  String? itemsCreate;
  int? itemsCAT;
  int? categoriesId;
  String? categoriesName;
  String? categoriesNameAr;
  String? categoriesImage;
  String? categoriesCreate;
  String? favorite;

  ItemsModel(
      {this.itemsId,
      this.itemsName,
      this.itemsNameAr,
      this.itemsNameDesc,
      this.itemsNameDescAr,
      this.itemsImage,
      this.itemsCount,
      this.itemsActive,
      this.itemsPrice,
      this.itemsDiscount,
      this.itemsCreate,
      this.itemsCAT,
      this.categoriesId,
      this.categoriesName,
      this.categoriesNameAr,
      this.categoriesImage,
      this.categoriesCreate,
      this.favorite});

  ItemsModel.fromJson(Map<String, dynamic> json) {
    itemsId = json['Items_id'];
    itemsName = json['Items_name'];
    itemsNameAr = json['Items_name_ar'];
    itemsNameDesc = json['Items_name_desc.'];
    itemsNameDescAr = json['Items_name_desc._ar'];
    itemsImage = json['Items_image'];
    itemsCount = json['Items_count'];
    itemsActive = json['Items_active'];
    itemsPrice = json['Items_price'];
    itemsDiscount = json['Items_discount'];
    itemsCreate = json['Items_create'];
    itemsCAT = json['Items_CAT'];
    categoriesId = json['categories_id'];
    categoriesName = json['categories_name'];
    categoriesNameAr = json['categories_name_ar'];
    categoriesImage = json['categories_image'];
    categoriesCreate = json['categories_Create'];
    favorite = json['favorite'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Items_id'] = this.itemsId;
    data['Items_name'] = this.itemsName;
    data['Items_name_ar'] = this.itemsNameAr;
    data['Items_name_desc.'] = this.itemsNameDesc;
    data['Items_name_desc._ar'] = this.itemsNameDescAr;
    data['Items_image'] = this.itemsImage;
    data['Items_count'] = this.itemsCount;
    data['Items_active'] = this.itemsActive;
    data['Items_price'] = this.itemsPrice;
    data['Items_discount'] = this.itemsDiscount;
    data['Items_create'] = this.itemsCreate;
    data['Items_CAT'] = this.itemsCAT;
    data['categories_id'] = this.categoriesId;
    data['categories_name'] = this.categoriesName;
    data['categories_name_ar'] = this.categoriesNameAr;
    data['categories_image'] = this.categoriesImage;
    data['categories_Create'] = this.categoriesCreate;
    return data;
  }
}
