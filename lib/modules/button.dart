import 'package:app/modules/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class Btn extends StatelessWidget {
  const Btn({Key? key,this.alignmentText,this.customAlignmentText=false,this.hasBorder,this.title,this.customHeightSize,this.customHeight=false}) : super(key: key);
  final hasBorder;
  final customAlignmentText;
  final alignmentText;
  final title;
  final customHeight;
  final customHeightSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: customHeight ? customHeightSize:60,
      width: Get.width-30 ,
      decoration: BoxDecoration(
        color: hasBorder?bg:bl,
        borderRadius: BorderRadius.circular(10),
        border: hasBorder ? Border.all(color: itemTextFeild):Border.fromBorderSide(BorderSide.none)
      ),
      child: Container(
        alignment: customAlignmentText ? alignmentText:Alignment.center,
        child: Text(title,style: hasBorder?Get.textTheme.headline2:Get.textTheme.button,),
      ),
    );
  }
}
