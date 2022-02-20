import 'package:app/Screans/controllers/menu.dart';
import 'package:app/Screans/views/Login.dart';
import 'package:app/Screans/views/Splash.dart';
import 'package:app/modules/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      initialRoute: '/',
      // darkTheme: ThemeData.dark(),
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF000000),
        primaryColor: Color(0xFF13DA9E),
        textTheme: TextTheme(
          subtitle1: TextStyle(fontSize: 18,color: itemTextFeild.withOpacity(1)),
          headline1: TextStyle(fontSize: 70,color: Colors.white),
          bodyText1: TextStyle(fontSize: 18,color: bl.withOpacity(1)),
          headline2: TextStyle(fontSize: 20,color: Colors.white)
        )
      ),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      defaultTransition:  Transition.zoom,
      getPages: [

        GetPage(name: '/', page: ()=>SplashPage()),
        GetPage(name: '/login', page: ()=>LoginPage(),),
        GetPage(name: '/menu', page: ()=>Menu(),),

      ],

      home: SplashPage(),
    );
  }
}

