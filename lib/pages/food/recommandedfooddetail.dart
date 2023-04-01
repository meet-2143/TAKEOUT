import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_waste_management/widgets/app_icon.dart';
import 'package:food_waste_management/widgets/expanded_text_file.dart';
import 'package:food_waste_management/widgets/large_letters.dart';

import '../../utils/dimentions.dart';

class Recommandedfood extends StatelessWidget {
  const Recommandedfood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Icon(Icons.shopping_cart_outlined),
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(child: (BigText(
                  size: Dimentions.font26, text: "Saffroni",))),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimentions.radius20),
                      topRight: Radius.circular(Dimentions.radius20),
                    )
                ),


              ),
            ),


            pinned: true,
            backgroundColor: Colors.yellow,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/images07.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(

                  child: ExpandableTextWidget(
                    text: "The most common hotel type on this list, chain hotels make up tens of thousands of properties located throughout the world. Chain hotels typically fall under a group of hotels operated by a company or owner. Hilton, for example, has a portfolio made up of over a dozen separate brands, including DoubleTree, Embassy Suites, Hampton, Homewood Suites, and Home2 Suites. Another example is Marriott, which boasts brands such as The Ritz-Carlton, Sheraton, Westin, Gaylord, Courtyard, and SpringHill Suites.The most common hotel type on this list, chain hotels make up tens of thousands of properties located throughout the world. Chain hotels typically fall under a group of hotels operated by a company or owner. Hilton, for example, has a portfolio made up of over a dozen separate brands, including DoubleTree, Embassy Suites, Hampton, Homewood Suites, and Home2 Suites. Another example is Marriott, which boasts brands such as The Ritz-Carlton, Sheraton, Westin, Gaylord, Courtyard, and SpringHill Suites.",
                    size: Dimentions.font20,),
                  margin: EdgeInsets.only(
                      left: Dimentions.width20, right: Dimentions.width20),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimentions.width20 * 2.5,
              right: Dimentions.width20 * 2.5,
              top: Dimentions.height10,
              bottom: Dimentions.height10,
            ),
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(iconsize: Dimentions.iconsize24,
                    iconColor: Colors.white,
                    backgroundColor: Colors.greenAccent,
                    icon: Icons.remove),
                BigText(text: "12 * 2 = 24",
                  color: Colors.black,
                  size: Dimentions.font26,),
                AppIcon(iconsize: Dimentions.iconsize24,
                    iconColor: Colors.white,
                    backgroundColor: Colors.greenAccent,
                    icon: Icons.add),
              ],
            ),
          ),
          Container(
            height: Dimentions.bottomHeightBar,
            // color: Colors.redAccent,
            padding: EdgeInsets.only(

              top: Dimentions.height30,
              bottom: Dimentions.height30,
              left: Dimentions.width20,
              right: Dimentions.width20,
            ),
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimentions.radius20 * 2),
                topRight: Radius.circular(Dimentions.radius20 * 2),

              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: EdgeInsets.only(top: Dimentions.height20,
                        bottom: Dimentions.height20,
                        left: Dimentions.width20,
                        right: Dimentions.width20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimentions.radius20),
                      color: Colors.white30,
                    ),
                    child:  Icon(
                      Icons.favorite,
                      color: Colors.greenAccent,
                      size: 33,
                    )
                ),
                Container(
                  height: Dimentions.bottomHeightBar,
                  // color: Colors.redAccent,
                  padding: EdgeInsets.only(

                    top: Dimentions.height30,
                    bottom: Dimentions.height30,
                    left: Dimentions.width20,
                    right: Dimentions.width20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimentions.radius20 * 1.5),
                      topRight: Radius.circular(Dimentions.radius20 * 1.5),

                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          padding: EdgeInsets.only(top: Dimentions.height20,
                              bottom: Dimentions.height20,
                              left: Dimentions.width20,
                              right: Dimentions.width20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                Dimentions.radius20),
                            color: Colors.white30,
                          ),

                      ),
                      Container(
                        padding: EdgeInsets.only(top: Dimentions.height20,
                            bottom: Dimentions.height20,
                            left: Dimentions.width20,
                            right: Dimentions.width20),

                        child: BigText(
                            text: "\$10 | Add To Cart", color: Colors.white,size: 36,),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              Dimentions.radius20),
                          color: Colors.greenAccent,

                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }}
