import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_waste_management/home/food_page_body.dart';
import 'package:food_waste_management/utils/dimentions.dart';
import 'package:food_waste_management/widgets/large_letters.dart';
import 'package:food_waste_management/widgets/small_letters.dart';

import 'food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children:[
          //showing header
          Container(
            child: Container(
              margin: EdgeInsets.only(top:Dimentions.height45,bottom:Dimentions.height15),
              padding: EdgeInsets.only(left:Dimentions.width20,right:Dimentions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                     BigText(text: "India",color: Colors.greenAccent, size: 30),
                    Row(
                      children: [
                        SmallText(text: 'Surat',color:Colors.black54,size:10),
                        Icon(Icons.arrow_drop_down_rounded)
                      ],
                    )
                    ],
                  ),
                  Container(
                    width: Dimentions.width45,
                    height: Dimentions.height45,
                    child: Icon(Icons.search,color:Colors.white,size: Dimentions.iconsize24,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimentions.radius15),
                      color: Colors.greenAccent,
                    ),
                  ),
                ],
              ),
            ),
          ),
          //showing the body
          Expanded(

              child: SingleChildScrollView(

           child:FoodPageBody(),
          )
          )

        ],
      )
    );
  }
}
