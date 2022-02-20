import 'package:app/modules/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TxtFeild extends StatelessWidget {
  const TxtFeild(
      {Key? key,
      this.keyboadtype,
      this.labelText,
      this.obscureText,
      this.onChanged,
      this.onSaved,
      this.prefixIcon,
      this.styleTextStyleTextForm,
      this.suffixIcon,
      this.textInputAction,
      this.validator,
  this.wi,
  this.customWidthSize=false,
  this.he})
      : super(key: key);
  final keyboadtype;
  final textInputAction;
  final onSaved;
  final onChanged;
  final validator;
  final styleTextStyleTextForm;
  final obscureText;
  final labelText;
  final prefixIcon;
  final suffixIcon;
  final customWidthSize;
  final he;
  final wi;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: customWidthSize? wi:Get.width - 30,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextFormField(
          autofocus: false,
          keyboardType: keyboadtype,
          textInputAction: textInputAction,
          onSaved: onSaved,
          onChanged: onChanged,
          validator: validator,
          style: styleTextStyleTextForm,
          obscureText: obscureText,
          decoration: InputDecoration(
              labelText: labelText,
              fillColor: bg,
              labelStyle: Get.textTheme.subtitle1,
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: borderTextFeild, width: 1.5),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: bl, width: 1.5),
              ),
              prefixIcon: Icon(
                prefixIcon,
                size: 16,
                color: itemTextFeild,
              ),
              suffixIcon: Icon(
                suffixIcon,
                size: 16,
                color: itemTextFeild,
              )),
        ),
      ),
    );
  }
}
