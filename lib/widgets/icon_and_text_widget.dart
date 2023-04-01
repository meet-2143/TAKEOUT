import 'package:flutter/cupertino.dart';
import 'package:food_waste_management/utils/dimentions.dart';
import 'package:food_waste_management/widgets/small_letters.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  final Color iconColor;
  const IconAndTextWidget({Key? key,
    required this.icon,
    required this.text,

    required this.iconColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       Icon(icon, color: iconColor,size: Dimentions.iconsize24) ,
      SizedBox(width: 5),
        SmallText(text: text,),
      ],
    );
  }
}
