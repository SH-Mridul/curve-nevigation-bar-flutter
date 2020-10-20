// import 'package:MusicApp/pages/PageOne.dart';
// import 'package:MusicApp/pages/PageTwo.dart';
import 'dart:ui';

import 'package:MusicApp/pages/PageFour.dart';
import 'package:MusicApp/pages/PageOne.dart';
import 'package:MusicApp/pages/PageThree.dart';
import 'package:MusicApp/pages/PageTwo.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home : HomePage()
  ));


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _page = 0;
  final pages = [
    PageOne(),
    PageTwo(),
    PageThree(),
    PageFour()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
       bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        backgroundColor: Colors.purple,
        buttonBackgroundColor: Colors.white,
        color: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 200),
        onTap: (index){
          setState(() {
            _page = index;
          });  
        }, 
        items: [
            Icon(Icons.home),
            Icon(Icons.message),
            Icon(Icons.call),
            Icon(Icons.contact_phone)
       ],),

       body: pages[_page],

      )
    );
  }
}
