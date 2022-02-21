import 'package:app/Screans/views/profile/messages.dart';
import 'package:app/modules/button.dart';
import 'package:app/modules/constans.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(

        child: _buildBody());
  }

  Widget _buildBody() {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DefaultTabController(
        length: 2,
        initialIndex: 1,
        child: Scaffold(
            appBar: AppBar(
              actions: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
                      onTap: () {
                        Get.toNamed('/messages');
                      },
                      child: Icon(Icons.mark_chat_unread_outlined)),
                )
              ],
              title: Container(
                  child: Text(
                'امیرحسین عباسیان',
                style: Get.textTheme.headline3,
              )),
              backgroundColor: bg,
              centerTitle: false,
            ),
            body: PageView(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'مانده بدهی',
                                    style: Get.textTheme.headline2,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '۲,۵۰۰,۰۰۰',
                                    style: Get.textTheme.subtitle1,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'اشخاص',
                                    style: Get.textTheme.headline2,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '۱۲',
                                    style: Get.textTheme.subtitle1,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              )
                            ],
                          ),
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              AvatarGlow(
                                endRadius: 60,
                                repeat: true,
                                showTwoGlows: true,
                                // duration: Duration(seconds: 30),
                                glowColor: white,
                                repeatPauseDuration: Duration(milliseconds: 5),
                                child: Material(
                                  elevation: 20,
                                  shape: CircleBorder(),
                                  child: CircleAvatar(
                                    radius: 35,
                                    backgroundColor: borderTextFeild,
                                    // maxRadius: 50,
                                    child: Text(
                                      'A',
                                      style: Get.textTheme.headline2,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                  right: -40,
                                  left: 0,
                                  bottom: 20,
                                  child: GestureDetector(
                                      onTap: () {
                                        print(Get.height * .4);
                                      },
                                      child: Icon(
                                        Icons.add_circle,
                                        color: bl,
                                      )))
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          GestureDetector(
                            onTap: () => Get.toNamed('/editProfile'),
                            child: Btn(
                              hasBorder: true,
                              title: 'ویرایش پروفایل',
                              customHeightSize: Get.height * .05,
                              customHeight: true,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.edit,
                              color: itemTextFeild,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TabBar(
                        tabs: _buildTab(),
                        automaticIndicatorColorAdjustment: true,
                        indicatorColor: bl,
                        labelColor: bl,
                        unselectedLabelColor: itemTextFeild,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Expanded(
                          child:
                              TabBarView(children: [userItem(), messageItem()]))
                    ],
                  ),
                ),
                MessagesPage()
              ],
            )),
      ),
    );
  }

  List<Widget> _buildTab() {
    return <Widget>[
      Tab(
        child: Icon(Icons.people),
      ),
      Tab(
        child: Icon(Icons.message),
      ),
    ];
  }

  messageItem() {
    return Container(
        child: ListView.builder(
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                // shape:  RoundedRectangleBorder(
                //   side: BorderSide(
                //     color: Colors.green.shade300,
                //   ),),
                style: ListTileStyle.drawer,
                title: Text(
                  'کارآموز',
                  style: Get.textTheme.headline2,
                ),
                iconColor: white,
                leading: Icon(Icons.circle),
                subtitle: Text(
                  'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده، شناخت فراوان جامعه و متخصصان را می طلبد، تا با نرم ',
                  style: Get.textTheme.subtitle1,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 5),
                trailing: Text(
                  '12:11',
                  style: Get.textTheme.subtitle1,
                ),
              );
            }));
  }

  userItem() {
    return Container(
        child: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ListView.builder(
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return Slidable(
                  // Specify a key if the Slidable is dismissible.
                  key: const ValueKey(0),

                  // The start action pane is the one at the left or the top side.
                  startActionPane: ActionPane(
                    // A motion is a widget used to control how the pane animates.
                    motion: const ScrollMotion(),

                    // A pane can dismiss the Slidable.
                    dismissible: DismissiblePane(onDismissed: () {}),

                    // All actions are defined in the children parameter.
                    children: const [
                      // A SlidableAction can have an icon and/or a label.
                      SlidableAction(
                        onPressed: null,
                        backgroundColor: Color(0xFFFE4A49),
                        foregroundColor: Colors.white,
                        icon: Icons.delete,
                        label: 'حذف',
                      ),
                    ],
                  ),

                  // The end action pane is the one at the right or the bottom side.
                  endActionPane: const ActionPane(
                    motion: ScrollMotion(),
                    children: [
                      SlidableAction(
                        // An action can be bigger than the others.
                        flex: 2,
                        onPressed: null,
                        backgroundColor: Color(0xFF13DA9E),
                        foregroundColor: Colors.white,
                        icon: Icons.edit_rounded,
                        label: 'ویرایش',
                      ),
                    ],
                  ),

                  // The child of the Slidable is what the user sees when the
                  // component is not dragged.
                  child: ListTile(
                    style: ListTileStyle.drawer,
                    title: Text(
                      'امیرحسین عباسیان',
                      style: Get.textTheme.headline2,
                    ),
                    iconColor: white,
                    leading: Icon(
                      Icons.circle,
                      color: itemTextFeild,
                    ),
                    trailing: Text(
                      'کارآموز',
                      style: Get.textTheme.subtitle1,
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 5),
                  ));
            }),
        Container(
          width: Get.width,
          height: Get.height * .09,
          color: bg,
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
             GestureDetector(
               child:  Btn(
                 hasBorder: true,
                 title: 'افزودن کاربر',
                 customHeightSize: Get.height * .05,
                 customHeight: true,
               ),
               onTap: ()=>Get.toNamed('/addUser'),
             ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.person_add,
                  color: white,
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
