import 'package:app/modules/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _selected=true;

    return Drawer(
      backgroundColor: drawer,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          addAutomaticKeepAlives: true,
          children: [


            Container(
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 25),
              decoration: BoxDecoration(color: drawer,),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.amberAccent,
                    child: Icon(
                      Icons.grid_goldenratio,
                      color: bg,
                    ),
                    radius: 80,
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'پلن طلایی',
                      style: Get.textTheme.headline3,

                    ),

                  ),
                  Text('نسخه ۱.۰.۲',style: Get.textTheme.subtitle1,)
                ],
              ),
            ),
            ListTile(
              onTap: ()=>navigate(0),
              selectedTileColor: Get.currentRoute=='/archive'?bl:null,
              selectedColor: bl,
              selected: _selected,
              title: Text(
                'بایگانی',
                style: Get.textTheme.headline3!
                    .copyWith(shadows: [], fontSize: 18),
              ),
              leading: Icon(
                Icons.archive_outlined,
                color: white,
              ),
            ),
            ListTile(
              selectedTileColor: Get.currentRoute=='/links'?bl:null,
              selected: _selected,

              onTap: ()=>navigate(1),
              title: Text(
                'لینک های مفید',
                style: Get.textTheme.headline3!
                    .copyWith(shadows: [], fontSize: 18),
              ),
              leading: Icon(
                Icons.link,
                color: white,
              ),
            ),
            ListTile(
              selectedTileColor: Get.currentRoute=='/textEditor'?bl:null,
              selected: _selected,

              onTap: ()=>navigate(2),

              title: Text(
                'سندنگار',
                style: Get.textTheme.headline3!
                    .copyWith(shadows: [], fontSize: 18),
              ),
              leading: Icon(
                Icons.text_snippet,
                color: white,
              ),
            ),
            ListTile(              selected: _selected,

              onTap: ()=>navigate(3),
              selectedTileColor: Get.currentRoute=='/setting'?bl:null,

              title: Text(
                'تنظیمات',
                style: Get.textTheme.headline3!
                    .copyWith(shadows: [], fontSize: 18),
              ),
              leading: Icon(
                Icons.settings,
                color: white,
              ),
            ),
            ListTile(              selected: _selected,

              onTap: ()=>navigate(4),
              selectedTileColor: Get.currentRoute=='/accountBalance'?bl:null,

              title: Text(
                'وضعیت حساب',
                style: Get.textTheme.headline3!
                    .copyWith(shadows: [], fontSize: 18),
              ),
              leading: Icon(
                Icons.account_balance,
                color: white,
              ),
            ),
          ],
        ),
      ),
    );
  }


  navigate(int index){
    switch (index){
      case 0 :{Get.toNamed('/archive');}
      break;
      case 1 :{Get.toNamed('/links');}
      break;
      case 2 :{Get.toNamed('/textEditor');}
      break;
      case 3 :{Get.toNamed('/setting');}
      break;
      case 4 :{Get.toNamed('/accountBalance');}

      break;
    }
  }
}
