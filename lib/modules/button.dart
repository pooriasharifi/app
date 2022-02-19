import 'package:app/modules/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class Btn extends StatelessWidget {
  const Btn({Key? key,this.alignmentText,this.customAlignmentText=false,this.hasBorder,this.title}) : super(key: key);
  final hasBorder;
  final customAlignmentText;
  final alignmentText;
  final title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: Get.width-30 ,
      decoration: BoxDecoration(
        color: hasBorder?bg:bl,
        borderRadius: BorderRadius.circular(10),
        border: hasBorder ? Border.all(color: bl):Border.fromBorderSide(BorderSide.none)
      ),
      child: Container(
        alignment: customAlignmentText ? alignmentText:Alignment.center,
        child: Text(title,style: Get.textTheme.headline2,),
      ),
    );
  }
}
