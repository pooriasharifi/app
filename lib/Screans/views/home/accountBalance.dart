import 'package:app/Screans/controllers/home/accountBalanceController.dart';
import 'package:app/Screans/controllers/home/homeController.dart';
import 'package:app/Screans/views/home/drawerView.dart';
import 'package:app/modules/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountBalancePage extends GetView<AccountBalanceController>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: _buildBody());
  }

 Widget _buildBody() {
   Get.put(AccountBalanceController());

   return       Scaffold(

      drawer: CustomDrawer(),
      floatingActionButton: FloatingActionButton(
          backgroundColor: bl,
          child: Icon(Icons.home, color: bg,),
          onPressed: ()=>Get.offAllNamed('menu')),
      appBar: AppBar(
        actions: [
        Icon(Icons.account_balance_outlined, color: white,)
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
