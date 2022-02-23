import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constans.dart';


class Snack extends GetSnackBar{


  bottomSnack ({mainButton,icon,messageText,iconColor}){
    Get.snackbar('title', 'message',
        backgroundColor: bg,
        overlayColor: white.withOpacity(.5),
        overlayBlur: 5,
        snackPosition: SnackPosition.BOTTOM,
        mainButton: mainButton,
        animationDuration: Duration(milliseconds: 400),
        icon: Icon(icon,color: iconColor,),
      messageText: Text(messageText,style: TextStyle(color: Colors.amber),),
      titleText: Container(),
      borderRadius: 10,


    );
  }

  topSnack({mainButton,icon,messageText,iconColor}){
    Get.snackbar('title', 'message',
      backgroundColor: bg,
      overlayColor: white.withOpacity(.5),
      overlayBlur: 5,
      snackPosition: SnackPosition.TOP,
      mainButton: mainButton,
      animationDuration: Duration(milliseconds: 400),
      icon: Icon(icon,color: iconColor,),
      messageText: Text(messageText,style: TextStyle(color: Colors.amber),),
      titleText: Container(),
      borderRadius: 10,

    );
  }
}