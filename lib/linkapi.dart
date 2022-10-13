class AppLink {
  static const String server = "http://10.0.2.2/shamil_backend";
  static const String image = "http://10.0.2.2/shamil_backend/uploads";

  //****************  Images ******************//
  static const String imagecategories = "$image/categories";
  static const String imageitems = "$image/items";

  static const String test = "$server/testget.php";

  //**************/ Auth//
  static const String signup = "$server/auth/signup.php";
  static const String login = "$server/auth/login.php";
  static const String verifyCodeSignUp = "$server/auth/verifycode.php";

  //**************/ Forgetpassword//

  static const String checkEmail = "$server/forgetpassword/checkemail.php";
  static const String resetpassword =
      "$server/forgetpassword/resetpassword.php";
  static const String verifyCodeFP = "$server/forgetpassword/verifycode.php";

  //*********************** Home ****************//

  static const String homePage = "$server/home.php ";

  //*********************** Items ****************//

  static const String Items = "$server/items/items.php ";
}
