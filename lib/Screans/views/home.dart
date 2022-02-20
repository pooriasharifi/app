

import 'package:app/modules/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: _buildBody()
    );
  }

 Widget _buildBody() {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text('وکیل یار',style: Get.textTheme.headline2,),
          backgroundColor: bg,
          centerTitle: false,

        ),

      ),
    );
 }
}
