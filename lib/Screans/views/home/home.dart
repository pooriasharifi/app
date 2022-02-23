import 'package:app/Screans/controllers/drawerController.dart';
import 'package:app/modules/constans.dart';
import 'package:app/modules/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: _buildBody());
  }

  Widget _buildBody() {
    var controller = Get.put(DrawerControllerCustom());

    return Scaffold(
      // drawer: CustomDrawer(),
drawer: CustomDrawer(),
      key: controller.scaffoldKey,
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
              'وکیل یار',
              style: Get.textTheme.headline1!.copyWith(fontSize: 50),
            ),
          ),
        ),
        backgroundColor: bg,
        centerTitle: false,
      ),
      body: Column(
        children: [
          Center(
            child: FlatButton(
                color: bl,
                hoverColor: bl,
                splashColor: bl,
                onPressed: () {
                  Snack().topSnack(
                      messageText: 'asdvsdvsdv',
                      icon: Icons.ac_unit,
                      iconColor: Colors.red);
                },
                child: Text(
                  'sdgvsdgvsgd',
                  style: TextStyle(color: white),
                )),
          ),
          Center(),
          Center(
            child: FlatButton(
                color: bl,
                hoverColor: bl,
                splashColor: bl,
                onPressed: () {
                  Snack().bottomSnack(
                      messageText: 'asdvsdvsdv',
                      icon: Icons.ac_unit,
                      iconColor: Colors.red);
                },
                child: Text(
                  'sdgvsdgvsgd',
                  style: TextStyle(color: white),
                )),
          ),
        ],
      ),
    );
  }
}
