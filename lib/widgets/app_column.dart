import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_waste_management/widgets/small_letters.dart';

import '../utils/dimentions.dart';
import 'icon_and_text_widget.dart';
import 'large_letters.dart';

class AppColumn extends StatelessWidget {
  final String  text;
  const AppColumn({Key? key,required this.text }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text:text,size: Dimentions.font26,),
        SizedBox(height:Dimentions.height10),
        Row(
          children: [
            Wrap(
                children: List.generate(5, (index) => Icon(Icons.star,color: Colors.black, size: 15,))
            ),
            SizedBox(width: Dimentions.width10),
            SmallText(text: "4.5"),
            SizedBox(width: Dimentions.width10),
            SmallText(text: "1287"),
            SizedBox(width: Dimentions.width10 ),
            SmallText(text: "comments"),
          ],
        ),

        SizedBox(height:Dimentions.height20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            IconAndTextWidget(icon: Icons.circle_sharp, text: "normal", iconColor: Colors.orange),
            IconAndTextWidget(icon: Icons.location_on, text: "2.8km", iconColor: Colors.greenAccent),
            IconAndTextWidget(icon: Icons.access_time_rounded, text: "45min", iconColor: Colors.redAccent),
          ],
        )
      ],
    );
  }
}
