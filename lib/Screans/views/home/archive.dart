import 'package:app/Screans/controllers/drawerController.dart';
import 'package:app/Screans/controllers/homeController.dart';
import 'package:app/Screans/views/home/drawerView.dart';
import 'package:app/modules/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArchivePage extends GetView<HomeController>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: _builBody());
  }

 Widget _builBody() {
    return    Scaffold(

      drawer: CustomDrawer(),
      appBar: AppBar(
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
        // actions: [
        //   GestureDetector(
        //       onTap: () {
        //         // CustomDrawer();
        //         controller.openDrawer();
        //       },
        //       child: Icon(
        //         Icons.more_vert,
        //         color: bl,
        //       ))
        // ],
        toolbarHeight: Get.height * .15,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              'بایگانی',
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