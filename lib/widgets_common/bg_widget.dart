import 'package:e_commerce_app_firebase/consts/consts.dart';

Widget bgWidget({Widget? child}) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
          imgBackground,
        ),
        fit: BoxFit.fill,
      ),
    ),
    child: child,
  );
}
