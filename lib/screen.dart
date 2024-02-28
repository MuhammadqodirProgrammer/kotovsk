
import 'package:flutter/material.dart';
import 'package:kotovsk/modul/pages/Creat_page.dart';
import 'package:kotovsk/modul/screens/Edit_page.dart';
import 'package:kotovsk/modul/screens/Heading_sceen.dart';
import 'package:kotovsk/modul/screens/HomeScreen.dart';
import 'package:kotovsk/modul/screens/Password_Screen.dart';
import 'package:kotovsk/modul/screens/news_page.dart';
import 'package:kotovsk/my_flip/page_flip.dart';


class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen1> createState() => _HomeScreenState();
}
final mainControler = GlobalKey<PageFlipWidgetState>();
class _HomeScreenState extends State<HomeScreen1> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageFlipWidget(
        key: mainControler,
        backgroundColor: Colors.white,
        initialIndex: 0,
        // isRightSwipe: true,
        children: <Widget>[
          HomeScreen(),
          NewsPage(),
          PasswordPage(),
          EditPage(),
          HeadingPage(),
          CreatePage()


        ],
      ),
    );
  }
}
