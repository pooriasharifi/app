import 'package:app/modules/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotePage extends StatelessWidget {
  const NotePage({Key? key}) : super(key: key);

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
            style: Get.textTheme.headline2,
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
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: bg,
          ),
        ),
      ),
    );
  }
}
