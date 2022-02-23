import 'package:app/modules/constans.dart';
import 'package:app/modules/snackbar.dart';
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
          toolbarHeight: Get.height*.15,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text('وکیل یار',style: Get.textTheme.headline1!.copyWith(
              fontSize: 50
            ),),
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
                  onPressed: (){
                    Snack().topSnack(messageText: 'asdvsdvsdv',icon: Icons.ac_unit,iconColor: Colors.red);
                    }, child: Text('sdgvsdgvsgd',style: TextStyle(color: white),)),

            ),
            Center(
              child: FlatButton(
                  color: bl,
                  hoverColor: bl,
                  splashColor: bl,
                  onPressed: (){
                  Snack().bottomSnack(messageText: 'asdvsdvsdv',icon: Icons.ac_unit,iconColor: Colors.red);
                  }, child: Text('sdgvsdgvsgd',style: TextStyle(color: white),)),

            ),
          ],
        ),
      ),
    );
 }
}
