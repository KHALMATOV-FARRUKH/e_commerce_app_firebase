import 'package:e_commerce_app_firebase/consts/consts.dart';

Widget applogoWidget() {
  return Image.asset(icAppLogo)
      .box
      .white
      .size(77, 77)
      .padding(EdgeInsets.all(8)).rounded
      .make();
}
