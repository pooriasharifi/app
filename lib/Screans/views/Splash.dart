
import 'package:app/Screans/controllers/splashController.dart';
import 'package:app/modules/constans.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';


class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SplashController splashController = Get.put(SplashController());
    return Scaffold(
        body: SafeArea(
          child: _buildBody(),
        ),
    );
  }

 Widget _buildBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: Get.height/3,
        ),
        Center(child: Text('وکیل یار',style: Get.textTheme.headline1,)),
        Spacer(),
        Center(
          child: SpinKitWanderingCubes(color: bl),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text('در حال اتصال',style: Get.textTheme.bodyText1,),
        )
      ],
    );
 }
}
