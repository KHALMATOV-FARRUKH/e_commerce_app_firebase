import 'package:e_commerce_app_firebase/consts/consts.dart';
import 'package:e_commerce_app_firebase/widgets_common/bg_widget.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;

  const CategoryDetails({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: title!.text.fontFamily(bold).white.make(),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      6,
                      (index) => "Baby Clothing"
                          .text.size(12)
                          .fontFamily(semibold)
                          .color(darkFontGrey)
                          .makeCentered()
                          .box
                          .white
                          .roundedSM
                          .size(120, 60)
                          .margin(EdgeInsets.symmetric(horizontal: 4))
                          .make()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
