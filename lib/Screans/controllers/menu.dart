import 'package:app/Screans/views/addPerson.dart';
import 'package:app/Screans/views/home.dart';
import 'package:app/Screans/views/myDocument.dart';
import 'package:app/Screans/views/note.dart';
import 'package:app/Screans/views/profile/profile.dart';
import 'package:app/modules/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  var _currentIndex = 0;
TextStyle _textStyle =TextStyle(fontSize: 13,fontFamily: 'vazir');
  final List<Widget> _children = [
    HomePage(),
    MyDocumentPage(),
    AddPersonPage(),
    NotePage(),
    ProfilePage()
  ];

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) {
          setState(
            () => _currentIndex = i,
          );
        },
        items: [
          //Home
          SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text('خانه',style: _textStyle,),
              selectedColor: bl,
              unselectedColor: white,
              activeIcon: Icon(Icons.home_filled)),
          //my Document
          SalomonBottomBarItem(
              icon: Icon(Icons.my_library_books_outlined),
              title: Text('پرونده های من',style: _textStyle),
              selectedColor: bl,
              unselectedColor: white,
              activeIcon: Icon(Icons.my_library_books_sharp)),
          //add
          SalomonBottomBarItem(
              icon: Icon(Icons.add_circle_outline),
              title: Text('افزودن موکل',style: _textStyle),
              selectedColor: bl,
              unselectedColor: white,
              activeIcon: Icon(Icons.add_circle_outlined)),
          //note
          SalomonBottomBarItem(
              icon: Icon(Icons.note_outlined),
              title: Text('یادداشت',style: _textStyle),
              selectedColor: bl,
              unselectedColor: white,
              activeIcon: Icon(Icons.note_rounded)),
          //profile
          SalomonBottomBarItem(
              icon: Icon(Icons.person_outline),
              title: Text('پروفایل',style: _textStyle),
              selectedColor: bl,
              unselectedColor: white,
              activeIcon: Icon(Icons.person)),
        ],
      ),
      body: _children[_currentIndex],
    ));
  }
}
