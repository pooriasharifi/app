import 'package:app/modules/constans.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomPageTwo extends StatelessWidget {
  const WelcomPageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده، شناخت فراوان جامعه و متخصصان را می طلبد، تا با نرم',
              style: Get.textTheme.headline2!.copyWith(color: bg,),textAlign: TextAlign.center,
            ),
            
          ),
          SizedBox(height: Get.height*.1,),
          TextButton(onPressed: ()=>Get.offNamed('/login'), child: Text('ورود',style: Get.textTheme.headline3,))
          
        ],
      ),
    );
  }
}
