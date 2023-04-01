import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_waste_management/widgets/small_letters.dart';

import '../utils/dimentions.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  final double size;
  const ExpandableTextWidget({Key? key,required this.size, required this.text}) : super(key: key);


  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText=true;

  double textHeight = Dimentions.screenHeight/5.63;
  @override
  void initState(){

    super.initState();
    if(widget.text.length>textHeight){
      firstHalf=widget.text.substring(0,textHeight.toInt());
      secondHalf=widget.text.substring(textHeight.toInt()+1,widget.text.length);
    }
    else{
      firstHalf=widget.text;
      secondHalf="";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child:secondHalf.isEmpty?SmallText(color:Colors.black,size:Dimentions.font16,text: firstHalf):Column(
        children: [
          SmallText(height:1.8,color:Colors.black,size:Dimentions.font16,text: hiddenText?(firstHalf+"..."):(firstHalf+secondHalf)),
          InkWell(
            onTap: (){
              setState(() {
                hiddenText=!hiddenText;
              });
            },
            child:Row(
              children:[
                SmallText(text: "show more",color:Colors.black),
                Icon(hiddenText?(Icons.arrow_drop_down):(Icons.arrow_drop_up),color: Colors.black,),
              ],
            ),
          )
        ],
      ),

    );
  }
}
