import 'package:app/Screans/controllers/menu.dart';
import 'package:app/Screans/views/Login.dart';
import 'package:app/Screans/views/Splash.dart';
import 'package:app/Screans/views/profile/messages.dart';
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
              subtitle1: TextStyle(
                  fontSize: 16,
                  color: itemTextFeild.withOpacity(1),
                  fontFamily: 'vazir'),
              headline1: TextStyle(
                  fontSize: 105, color: Colors.white, fontFamily: 'ir'),
              bodyText1: TextStyle(
                  fontSize: 16, color: bl.withOpacity(1), fontFamily: 'vazir',shadows: <Shadow>[
                Shadow(
                  offset: Offset(0, 0),
                  blurRadius: 3.0,
                  color: white.withOpacity(1),
                ),
                Shadow(
                  offset: Offset(0, 0),
                  blurRadius: 8.0,
                  color: bl.withOpacity(1),
                ),
              ],),
              headline2: TextStyle(
                  fontSize: 16, color: Colors.white, fontFamily: 'vazir'),
              headline3: TextStyle(
                fontFamily: 'titr',
                fontSize: 25,
                color: white.withOpacity(1),
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(0, 0),
                    blurRadius: 3.0,
                    color: white.withOpacity(1),
                  ),
                  Shadow(
                    offset: Offset(0, 0),
                    blurRadius: 8.0,
                    color: bl.withOpacity(1),
                  ),
                ],
              ),
          overline: TextStyle(
              fontSize: 10, color: bl.withOpacity(1), fontFamily: 'vazir'),
            button: TextStyle(
                fontSize: 18, color: bg, fontFamily: 'titr'),
          ),
      ),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: '/', page: () => SplashPage()),
        GetPage(
          name: '/login',
          page: () => LoginPage(),
        ),
        GetPage(
          name: '/menu',
          page: () => Menu(),
        ),
        GetPage(
            name: '/messages',
            page: () => MessagesPage(),
            transition: Transition.leftToRightWithFade),
      ],

      home: SplashPage(),
    );
  }
}
