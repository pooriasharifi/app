import 'package:app/modules/button.dart';
import 'package:app/modules/constans.dart';
import 'package:app/modules/textfeilds.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class NotePage extends GetView {


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: _buildBody());
  }

  Widget _buildBody() {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'یادداشت ها',
            style: Get.textTheme.headline3,
          ),
          backgroundColor: bg,
          centerTitle: false,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: Material(
                        color: bg,
                        child: ClipRect(
                          child: ExpansionTile(
                            collapsedBackgroundColor: bg,
                            collapsedIconColor: white,
                            iconColor: bl,
                            textColor: bl,
                            title: Text('تیتر'),
                            leading: Icon(Icons.circle),
                            expandedAlignment: Alignment.centerRight,
                            collapsedTextColor: white,
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم …..',
                                style: Get.textTheme.subtitle1,
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 20,
          backgroundColor: bl,
          splashColor: white,
          onPressed: () {
            Get.defaultDialog(
              title: 'افزودن یادداشت',
              titleStyle: Get.textTheme.headline2,
              backgroundColor: borderTextFeild,
              barrierDismissible: false,

              radius: 10,
              content: Column(
                children: [
                TxtFeild(
                          labelText: 'تیتر',
                          obscureText: false,
                  textInputAction: TextInputAction.next,
                  
                        ),
                        SizedBox(height: 10,),
              TxtFeild(
                customHeightSize: true,
                he: Get.height/6,
                maxLines: 5,
                labelText: 'متن',
                obscureText: false,
                textInputAction: TextInputAction.newline,
              ),
                  SizedBox(height: 10,),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: ()=>Get.back(),
                        child: Btn(
                          customWidth: true,
                          customWidthtSize: Get.width*.3,
                          hasBorder: true,
                          title: 'صرف نظر',
                        ),
                      ),
                      SizedBox(width: 10,),
                      Btn(
                        customWidth: true,
                        customWidthtSize: Get.width*.3,
                        hasBorder: false,
                        title: 'افزودن',
                      ),
                    ],
                  )
                ],
              )

                // ClipRRect(
                //   borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                //   child: Container(
                //
                //     color: borderTextFeild,
                //     height: 300,
                //     width: Get.width,
                //     child: Column(
                //       children: [
                //         Container(
                //           margin: EdgeInsets.symmetric(vertical: 10),
                //           width: 50,
                //           height: 2,
                //           color: white,
                //         ),
                //         TxtFeild(
                //           labelText: 'تیتر',
                //           obscureText: false,
                //
                //         ),
                //         SizedBox(height: 10,)
                //         ,
                //         Wrap(
                //           children: [
                //             TxtFeild(
                //               labelText: 'تیتر',
                //               obscureText: false,
                //
                //             ),
                //           ],
                //         ),
                //       ],
                //     ),
                //   ),
                // )
            );
          },
          child: Icon(
            Icons.add,
            color: bg,
          ),

        ),
      ),
    );
  }
}
