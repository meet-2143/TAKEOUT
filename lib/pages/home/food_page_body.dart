import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:food_waste_management/controllers/popular_product_controller.dart';
import 'package:food_waste_management/controllers/recommanded_product_controller.dart';
import 'package:food_waste_management/models/products-model.dart';
import 'package:food_waste_management/utils/dimentions.dart';
import 'package:food_waste_management/widgets/app_column.dart';
import 'package:food_waste_management/widgets/icon_and_text_widget.dart';
import 'package:food_waste_management/widgets/large_letters.dart';
import 'package:food_waste_management/widgets/small_letters.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:get/get.dart';

import '../../utils/app_constants.dart';
class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue=0.0;
  double _scalefactor=0.8;
  double _height=Dimentions.pageViewContainer;

  final  double index=0.0;

  @override
  void initState(){
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue=pageController.page!;
       // print("current value is"+_currPageValue.toString());
      });
    });
  }
@override
void dispose(){
    pageController.dispose();
}
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //slider section
        GetBuilder<PopularProductController>(builder: (popularProducts){
          return popularProducts.isLoaded?Container(
            // color: Colors.redAccent,
            height:Dimentions.pageView,
            child: PageView.builder(
                controller: pageController,
                itemCount:popularProducts.popularProductList.isEmpty?0:popularProducts.popularProductList.length,
                itemBuilder: (context,position)
                {
                  return _buildPageItem(position,popularProducts.popularProductList[position]);
                }),
          ):CircularProgressIndicator(
            color: Colors.greenAccent,
          );
        }),
    //dots
             GetBuilder<PopularProductController>(builder: (popularProducts){
             return  DotsIndicator(
               dotsCount:popularProducts.popularProductList.isEmpty?1:popularProducts.popularProductList.length,
               position: _currPageValue,
               decorator: DotsDecorator(
                 activeColor: Colors.black,
                 size: const Size.square(9.0),
                 activeSize: const Size(18.0, 9.0),
                 activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
               ),
             );
             }),
             //popular text
             SizedBox(height: Dimentions.height30,),
             Container(
        margin: EdgeInsets.only(left: Dimentions.width30),
        child:
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "Recommanded"),
              SizedBox(width: Dimentions.width10,),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: BigText(text: ".",color: Colors.black26),
              ),
              SizedBox(width: Dimentions.width10,),
              Container(
                margin: const EdgeInsets.only(bottom: 2),
                child: SmallText(text:"Food Pairing"),
              )
            ],
          )
      ),
        //list of food and images
         GetBuilder<RecommandedProductController>(builder: (recommandedProduct){
           return recommandedProduct.isLoaded?ListView.builder(
               physics: NeverScrollableScrollPhysics(),
               shrinkWrap: true,


               itemCount:recommandedProduct.RecommandedProductList.length ,
               itemBuilder: (context, index){
                 return Container(
                   //SmallText(text: "meet",),
                     margin: EdgeInsets.only(left: Dimentions.width20,right: Dimentions.width20,bottom: Dimentions.height20),
                     child: Row(

                       children: [
                         //image section
                         Container(
                           width:Dimentions.listviewimgSize,
                           height: Dimentions.listviewimgSize,

                           decoration: BoxDecoration(

                               borderRadius: BorderRadius.circular(Dimentions.radius20),
                               color: Colors.white38,
                               image: DecorationImage(
                                   fit: BoxFit.cover,
                                 image: AssetImage(
                                   "assets/images/image06.jfif"
                                 )
                               )
                           ),
                         ),
                         //text section
                         Expanded(
                           child: Container(
                             height:Dimentions.listviewTextContSize,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.only(
                                   topRight: Radius.circular(Dimentions.radius20),
                                   bottomRight: Radius.circular(Dimentions.radius20)
                               ),
                               color: Colors.white,
                             ),
                             child: Padding(
                                 padding: EdgeInsets.only(left: Dimentions.width10,right: Dimentions.width10),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     BigText(text: "Food Villa",),
                                     SizedBox(
                                       height: Dimentions.height10,
                                     ),
                                     SmallText(text: "with chinese characteristic"),
                                     SizedBox(
                                       height: Dimentions.height10,
                                     ),
                                     Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       children:[
                                         IconAndTextWidget(icon: Icons.circle_sharp, text: "veg", iconColor: Colors.green),
                                         IconAndTextWidget(icon: Icons.location_on, text: "2.8km", iconColor: Colors.greenAccent),
                                         IconAndTextWidget(icon: Icons.access_time_rounded, text: "45min", iconColor: Colors.redAccent),

                                       ],
                                     )
                                   ],

                                 )
                             ),
                           )
                           ,
                         )
                       ],
                     )
                 );
               }):CircularProgressIndicator(
             color:Colors.greenAccent,
           );

         })
      ],
    ) ;
  }
  Widget _buildPageItem(int index, ProductModel popularProduct){
    Matrix4 matrix= new Matrix4.identity();
    if(index==_currPageValue.floor()){
      var currScale = 1-(_currPageValue-index)*(1-_scalefactor);
      var currTrans =_height*(1-currScale)/2;

      matrix=Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0,currTrans, 0);
    }
    else if(index==_currPageValue.floor()+1){
      var currScale=_scalefactor+(_currPageValue-index+1)*(1-_scalefactor);
      matrix=Matrix4.diagonal3Values(1, currScale, 1);
      var currTrans =_height*(1-currScale)/2;
      matrix=Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0,currTrans, 0);

    }
    else if(index==_currPageValue.floor()-1){
      var currScale=_scalefactor+(_currPageValue-index+1)*(1-_scalefactor);

      matrix=Matrix4.diagonal3Values(1, currScale, 1);
      var currTrans =_height*(1-currScale)/2;
      matrix=Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0,currTrans, 0);

    }
    else
      {
        var currScale=0.8;
        matrix=Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, _height*(1-_scalefactor)/2,0 );

      }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [

          Container(
            height: Dimentions.pageViewContainer,
      margin: EdgeInsets.only(left:Dimentions.width10,right: Dimentions.width10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: index.isEven?Color(0xFF69c5df):Color(0xFF9294cc),

              image: DecorationImage(
                    fit: BoxFit.cover,
                   image:AssetImage(
                     "assets/images/image06(01).jpg"
                   )
                ),

            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(

              height: Dimentions.pageTextContainer,
              margin: EdgeInsets.only(left: Dimentions.width30,right: Dimentions.width30,bottom: Dimentions.height30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimentions.radius20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color:Color(0xFFe8e8e8),
                     // blurRadius: 5.0,
                      offset: Offset(0,5),
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-5,0),
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(5,0),
                    ),
                  ],
                  //image: DecorationImage(
                    //  fit: BoxFit.cover,
                     //image: AssetImage("assets/images/image01.jpg")
                  //)
              ),
              child: Container(
                padding: EdgeInsets.only(top:Dimentions.height15, left: Dimentions.width10, right:Dimentions.width10),
                child: AppColumn(text:"Saffroni"),
              )
            ),
          ),
        ],


      ),
    );
  }
}
