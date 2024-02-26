import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kotovsk/modul/pages/warcity_page.dart';

class FactoryPage extends StatelessWidget {
  const FactoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
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
                    'Город и завод № 204 в годы ВОВ',
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
                // Add your widgets here
              ],
            ),
          ),
          Positioned(
            top: 55,
            right: 100,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CityPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(246, 253, 199, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Set border radius here
                ),
                side: BorderSide(
                  color: Color.fromARGB(219, 187, 105, 1), // Set border color here
                  width: 2, // Set border width here
                ),
              ),
              child: Text(
                'назад',
                style: GoogleFonts.philosopher(
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 120,
            left: 20,
            child: Center(
              child: SizedBox(
                width: 900,
                height: 600,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Image.asset(
                        "assets/history/15.jpg",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 155,
            right: 20,
            child: Center(
              child: SizedBox(
                width: 650,
                height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Image.asset(
                        "assets/history/14.png",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
