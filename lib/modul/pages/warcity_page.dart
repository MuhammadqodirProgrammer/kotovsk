import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kotovsk/modul/pages/factory.dart';
import 'package:kotovsk/modul/pages/heros_pages.dart';
import 'package:kotovsk/modul/pages/protect_sky.dart';
import 'package:kotovsk/modul/pages/war_page.dart';
import 'package:kotovsk/modul/pages/white_robe.dart';

import '../screens/HomeScreen.dart';



class CityPage  extends StatelessWidget {
  CityPage({Key? key}) : super(key: key);
  final List<Widget> pages = [
    Herospage(),
    WhiteRobePage(),
    ProtectSkyPage(),
    FactoryPage(),
    WarPage(),



  ];
  final double runSpacing = 20;
  final double spacing = 20;
  final int listSize = 5;
  final columns = 3;
  @override
  Widget build(BuildContext context) {
    final w = (MediaQuery.of(context).size.width - 160 - runSpacing * (columns - 1)) / columns;
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images2/background2.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Город в годы ВОВ',
                      style: GoogleFonts.philosopher(
                        textStyle: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),


                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 70),
                    child:  Wrap(
                      runSpacing: runSpacing,
                      spacing: spacing,
                      alignment: WrapAlignment.center,
                      children: List.generate(listSize, (index) {
                        return InkWell(
                          onTap: (){
                            Navigator.push(
                                context,MaterialPageRoute(builder: (context){
                                  return pages[index];
                            }));
                          },
                        child: Container(
                          width: w,
                                  height: 280,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.asset(
                                      "assets/images2/${index + 1}.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              );

                      }),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 58,
              right: 70,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(219, 187, 105, 1.0),
                ),
                child: Text(
                  'назад',
                  style: GoogleFonts.philosopher(
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
