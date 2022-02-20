import 'package:app/modules/button.dart';
import 'package:app/modules/constans.dart';
import 'package:app/modules/textfeilds.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddPersonPage extends StatelessWidget {
  const AddPersonPage({Key? key}) : super(key: key);

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
            'ثبت افراد',
            style: Get.textTheme.headline2,
          ),
          backgroundColor: bg,
          centerTitle: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TxtFeild(
                labelText: 'نام',
                obscureText: false,
                textInputAction: TextInputAction.next,
              ),
              SizedBox(
                height: 10,
              ),
              TxtFeild(
                labelText: 'نام خانوادگی',
                obscureText: false,
                textInputAction: TextInputAction.next,
              ),
              SizedBox(
                height: 10,
              ),
              TxtFeild(
                labelText: 'گدملی',
                obscureText: false,
                textInputAction: TextInputAction.next,
              ),
              SizedBox(
                height: 10,
              ),
              TxtFeild(
                labelText: 'شماره همراه',
                obscureText: false,
                textInputAction: TextInputAction.next,
              ),
              SizedBox(
                height: 10,
              ),
              TxtFeild(
                labelText: 'شماره پرونده',
                obscureText: false,
                textInputAction: TextInputAction.next,
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TxtFeild(labelText: 'دریافتی',obscureText: false,customWidthSize: true,wi: Get.width/2.2,textInputAction: TextInputAction.next,),
                  SizedBox(width: 10,),
                  TxtFeild(labelText: 'بدهی',obscureText: false,customWidthSize: true,wi: Get.width/2.2,textInputAction: TextInputAction.done,),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Btn(
                hasBorder: true,
                title: 'اضافه کردن سند',

              ),
              SizedBox(
                height: 50,
              ),
              Btn(
                hasBorder: false,
                title: 'تایید',

              ),

            ],
          ),
        ),
      ),
    );
  }
}
