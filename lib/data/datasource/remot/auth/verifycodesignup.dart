import 'package:shamil_ecommerce/core/class/crud.dart';
import 'package:shamil_ecommerce/linkapi.dart';

class VerifyCodeSignUpData {
  Crud crud;
  VerifyCodeSignUpData(this.crud);
  postdata(String email, String vc) async {
    var response = await crud
        .postData(AppLink.verifyCodeSignUp, {"email": email, "vc": vc});
    return response.fold((l) => l, (r) => r);
  }
}
