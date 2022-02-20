import 'package:app/modules/constans.dart';
import 'package:app/modules/textfeilds.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MyDocumentPage extends StatelessWidget {
  const MyDocumentPage({Key? key}) : super(key: key);

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
          title: Text('پرونده های من',style: Get.textTheme.headline2,),
          backgroundColor: bg,
          centerTitle: false,

        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: bl,
          onPressed: (){
            Get.bottomSheet(
              Container(
                color: borderTextFeild,
                height: 300,
                width: Get.width,
              )
            );
        },child: Icon(Icons.add,color: bg,),),
        body: Column(
          children: [
            TxtFeild(
              labelText: 'جستجو',
              obscureText: false,
              textInputAction: TextInputAction.done,
              prefixIcon: Icons.search,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(
                  top: 10
                ),
                child: ListView.builder(
                    itemCount: 20,

                    itemBuilder: (BuildContext context, int index)
                {
                  return Container(

                    child: Material(
                      color: bg,
                      child: ClipRect(
                        child: ExpansionTile(
                          collapsedBackgroundColor: bg,
                          collapsedIconColor: white,
                          iconColor: bl,
                          textColor: bl,
                          title: Text('امیرحسین عباسیان'),
                          leading: Icon(Icons.circle),
                          expandedAlignment: Alignment.centerRight,
                          collapsedTextColor: white,
                          children: [
                            SizedBox(height: 15,),
                            TextButton(
                                onPressed: (){},
                                child: Text('اسناد و مدارک',style: Get.textTheme.subtitle1,)),
                            SizedBox(height: 15,),
                            TextButton(
                                onPressed: null,
                                child: Text('فایل های PDF',style: Get.textTheme.subtitle1,)),
                            SizedBox(height: 15,),
                            TextButton(
                                onPressed: null,
                                child: Text('فایل های WORD',style: Get.textTheme.subtitle1,)),
                            SizedBox(height: 15,),
                            TextButton(
                                onPressed: null,
                                child: Text('حسابرسی',style: Get.textTheme.subtitle1,)),
                            SizedBox(height: 15,),
                            TextButton(
                                onPressed: null,
                                child: Text('یادداشت',style: Get.textTheme.subtitle1,)),

                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}