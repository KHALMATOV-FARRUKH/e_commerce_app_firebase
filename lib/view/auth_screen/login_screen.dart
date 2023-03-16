import 'package:e_commerce_app_firebase/consts/consts.dart';
import 'package:e_commerce_app_firebase/widgets_common/applogo_widget.dart';
import 'package:e_commerce_app_firebase/widgets_common/bg_widget.dart';
import 'package:e_commerce_app_firebase/widgets_common/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.07).heightBox,
              applogoWidget(),
              10.heightBox,
              "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
              10.heightBox,
              Column(
                children: [
                  customTextField(),
                  customTextField(),
                ],
              )
                  .box
                  .white
                  .rounded
                  .padding(const EdgeInsets.all(16))
                  .width(context.screenWidth - 70)
                  .make(),
            ],
          ),
        ),
      ),
    );
  }
}
