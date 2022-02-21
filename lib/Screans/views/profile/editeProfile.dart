import 'package:flutter/material.dart';
import 'package:get/get.dart';



class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(

        bottom: false,
        child: _buildBody());
  }

 Widget _buildBody() {
    return Scaffold(
      backgroundColor: Colors.amber,
    );
 }
}
