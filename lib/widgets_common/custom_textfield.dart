import 'package:e_commerce_app_firebase/consts/consts.dart';

Widget customTextField({String? title, String? hint, controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      email.text.color(redColor).fontFamily(semibold).size(16).make(),
      5.heightBox,
      TextFormField(
        decoration: InputDecoration(
          hintStyle: TextStyle(
            fontFamily: semibold,
            color: textFieldGrey,
          ),
          hintText: emailHint,
          isDense: true,
          fillColor: lightGrey,
          filled: true,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: redColor),
          ),
        ),
      ),
    ],
  );
}
