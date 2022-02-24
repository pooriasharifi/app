import 'package:app/Screans/controllers/home/homeController.dart';
import 'package:app/Screans/controllers/home/settingController.dart';
import 'package:app/Screans/views/home/drawerView.dart';
import 'package:app/modules/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingPage extends GetView<SettingController>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: _buildBody());
  }

 Widget _buildBody() {
   Get.put(SettingController());

   return       Scaffold(
     floatingActionButton: FloatingActionButton(
         backgroundColor: bl,
         child: Icon(Icons.home, color: bg,),
         onPressed: ()=>Get.offAllNamed('menu')),

      drawer: CustomDrawer(),
      appBar: AppBar(actions: [
        Icon(Icons.settings, color: white,)
      ],
        leading: Builder(
          builder: (BuildContext context) {
            return
              IconButton(
                icon: CircleAvatar(
                    backgroundColor: bl,
                    child:  Icon(Icons.more_vert, color: bg,)),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
          },
        ),
        toolbarHeight: Get.height * .15,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              '${controller.title}',
              style: Get.textTheme.headline3,
            ),
          ),
        ),
        backgroundColor: bg,
        centerTitle: false,
      ),

    );

 }

}
