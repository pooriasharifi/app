
import 'package:app/modules/button.dart';
import 'package:app/modules/constans.dart';
import 'package:app/modules/textfeilds.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _buildBody()),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: Get.height / 5,
          ),
          Center(
              child: Text(
            'وکیل یار',
            style: Get.textTheme.headline1,
          )),
          Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Form(
                  child: TxtFeild(
                labelText: 'نام کاربری',
                obscureText: false,
                prefixIcon: Icons.email_outlined,
                    textInputAction: TextInputAction.next,
              ))),
          Form(
              child: TxtFeild(
            labelText: 'رمز عبور',
            obscureText: true,
            suffixIcon: Icons.remove_red_eye,
            prefixIcon: Icons.lock_outline,
                textInputAction: TextInputAction.done,
          )),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.only(bottom: 20),
              child: TextButton(onPressed: null, child: Text('فراموشی رمز عبور',style: Get.textTheme.bodyText1,)),
            ),
          ),
          GestureDetector(
              onTap: (){Get.offNamed('/menu');
                Get.snackbar('title', 'ورود با موفقیت انجام شد',backgroundColor: Colors.green,);
                },
              child: Container(child: const Btn(title: 'ورود',hasBorder: false,))),
          Spacer(),
          Container(
            width: Get.width,
            height: 1,
            color: itemTextFeild,

          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: RichText(text: TextSpan(
              text: 'حساب کاربری ندارید ؟',
              style: Get.textTheme.subtitle1,
              children: <TextSpan>[
                TextSpan(
                  text: ' ثبت نام کنید',style: Get.textTheme.subtitle1!.copyWith(
                  color: bl
                )
                )
              ]
            ))
          )
        ],
      ),
    );
  }
}
