import 'package:app/Screans/views/welcom/pageOne.dart';
import 'package:app/Screans/views/welcom/pageTwo.dart';
import 'package:app/modules/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class WelcomPage extends StatelessWidget {
  const WelcomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: PageView(
        children: [
          Center(
            child: Text('خوش آمدید',style: Get.textTheme.headline1!.copyWith(color: bg),),
          ),
          WelcomPageOne(),
          WelcomPageTwo()
        ],
      ),
    );
  }
}
