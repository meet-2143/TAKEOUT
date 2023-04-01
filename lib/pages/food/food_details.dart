import 'package:flutter/material.dart';
import 'package:food_waste_management/utils/dimentions.dart';
import 'package:food_waste_management/widgets/app_icon.dart';
import 'package:food_waste_management/widgets/expanded_text_file.dart';

import '../../widgets/app_column.dart';
import '../../widgets/icon_and_text_widget.dart';
import '../../widgets/large_letters.dart';
import '../../widgets/small_letters.dart';

class PopularFoodDetails extends StatelessWidget {
  const PopularFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
              right: 0,

              child: Container(
                width: double.maxFinite,
                height: Dimentions.popularfoodimage,
                  decoration: BoxDecoration(

                    image: DecorationImage(
                    fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/images/image06(1).jpg"
                      ),
                    ),
                  ),
              )
          ),//container
          Positioned(
            top: Dimentions.height45,
            left: Dimentions.width20,
              right: Dimentions.width20,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios,),
                  AppIcon(icon: Icons.shopping_bag_outlined),
                ],
              )
          ),//icon widget
          Positioned(
              left:0,
              right: 0,
              top: Dimentions.popularfoodimage-20,

              child:Container(

                padding: EdgeInsets.only(left: Dimentions.width20,right: Dimentions.width20,top: Dimentions.height20),
                decoration: BoxDecoration
                  (
                  borderRadius: BorderRadius.only(
                    topRight:Radius.circular(Dimentions.radius20),
                    topLeft: Radius.circular(Dimentions.radius20),
                  ),
                  color: Colors.white
                ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text: "Ponnusamy"),
                    SizedBox(height: Dimentions.height20),
                    BigText(text: "Introduce",),
                   SizedBox(height:Dimentions.height20),

                  ExpandableTextWidget(size:Dimentions.font10,text: " time to look up new words, this means that doing reading tasks is a good way to learn new vocabulary Agriculture Organization (http://www.fao.org/food-loss-and-food-waste/flw-data), 1/3rd of food produced for human consumption is wasted globally, which accounts for almost 1.3 billion tons per year. On the other hand, also as per WHO 20% of the population face extreme food shortages. Hence there is a need to come up with a solution that can avoid food waste & can help feed the needy.                   This android-based Food Waste Management system can assist in collecting the leftover food from hotels & restaurants to distribute among those in need. NGOs that are helping poor communities to battle against starvation & malnutrition can raise a request for food supply from restaurants through this application. Once the request is accepted, the NGOs can collect the food from the restaurants for its distribution. In this way this android-based food waste management system will help restaurants to reduce food waste and will help in feeding the poor and needy people. ",)
                  ],
                ),

              )

          )//introduction of food
        ],
      ),
      bottomNavigationBar: Container(
        height:Dimentions.bottomHeightBar,
       // color: Colors.redAccent,
        padding: EdgeInsets.only(

          top:Dimentions.height30,
          bottom: Dimentions.height30,
          left: Dimentions.width20,
          right: Dimentions.width20,
        ),
        decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimentions.radius20*2),
              topRight: Radius.circular(Dimentions.radius20*2),

        ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top:Dimentions.height20,bottom:Dimentions.height20,left: Dimentions.width20,right: Dimentions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimentions.radius20),
                color:Colors.white30,
              ),
              child:Row(
                children: [
                  Icon(Icons.remove,color:Colors.black12),
                  SizedBox(width: Dimentions.width10/2,),
                  BigText(text: "0"),
                  SizedBox(width: Dimentions.width10/2,),

                  Icon(Icons.add,color: Colors.black12,),
                ],
              )
            ),
            Container(
              padding: EdgeInsets.only(top:Dimentions.height20,bottom:Dimentions.height20,left: Dimentions.width20,right: Dimentions.width20),

              child: BigText(text:"Add Request",color:Colors.white),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimentions.radius20),
                color:Colors.greenAccent,

              ),
            )
          ],
        ),
      ),
    );
  }
}

