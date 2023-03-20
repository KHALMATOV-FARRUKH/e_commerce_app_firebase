import 'package:e_commerce_app_firebase/consts/consts.dart';
import 'package:e_commerce_app_firebase/consts/lists.dart';
import 'package:e_commerce_app_firebase/controller/auth_controller.dart';
import 'package:e_commerce_app_firebase/view/auth_screen/signup_screen.dart';
import 'package:e_commerce_app_firebase/view/home_screen/home.dart';
import 'package:e_commerce_app_firebase/widgets_common/applogo_widget.dart';
import 'package:e_commerce_app_firebase/widgets_common/bg_widget.dart';
import 'package:e_commerce_app_firebase/widgets_common/custom_textfield.dart';
import 'package:e_commerce_app_firebase/widgets_common/our_button.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AuthController());

    return bgWidget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.07).heightBox,
              applogoWidget(),
              15.heightBox,
              "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
              10.heightBox,
              Column(
                children: [
                  customTextField(
                      hint: emailHint,
                      title: email,
                      isPass: false,
                      controller: controller.emailController),
                  customTextField(
                      hint: passwordHint,
                      title: password,
                      isPass: true,
                      controller: controller.passwordController),
                  Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {}, child: forgetPassword.text.make())),
                  5.heightBox,
                  ourButton(
                      color: redColor,
                      title: login,
                      textColor: whiteColor,
                      onPress: () async {
                        await controller.loginMethod(context: context).then((value){
                          if(value !=null){
                            VxToast.show(context, msg: loggedin);
                            Get.offAll(()=> const Home());
                          }
                        });
                      }).box.width(context.screenWidth - 50).make(),
                  5.heightBox,
                  createNewAccount.text.color(fontGrey).make(),
                  5.heightBox,
                  ourButton(
                      color: lightGolden,
                      title: signUp,
                      textColor: redColor,
                      onPress: () {
                        Get.to(() => const SignUpScreen());
                      }).box.width(context.screenWidth - 50).make(),
                  10.heightBox,
                  loginWith.text.color(fontGrey).make(),
                  5.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: CircleAvatar(
                          backgroundColor: lightGrey,
                          radius: 25,
                          child: Image.asset(
                            socialIconList[index],
                            width: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
                  .box
                  .white
                  .rounded
                  .padding(const EdgeInsets.all(16))
                  .width(context.screenWidth - 70)
                  .shadowSm
                  .make()
            ],
          ),
        ),
      ),
    );
  }
}
