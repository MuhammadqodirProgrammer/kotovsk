import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kotovsk/modul/pages/war_page.dart';


class DnperPage extends StatelessWidget {
  const DnperPage({Key? key}) : super(key: key);

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
                    'Битва за Днепр',
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
                    builder: (context) => WarPage(),
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
              child: Container(
                width: 720,
                height: 600,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Image.asset(
                        "assets/history/9.png",
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          """ Битва за Днепр - ряд взаимосвязанных стратегических операций Великой Отечественной войны, проведённых во второй половине 1943 года на берегах Днепра. С обеих сторон в битве приняло участие до 4 млн человек, а её фронт растянулся на 1400 километров. В результате четырёхмесячной операции Левобережная Укранна была почти полностью освобождёна Красной Армней от немецких захватчиков. В ходе операции значительные силы Красной Армии форсировали реку, создали несколько стратегических плацдармов на правом берегу реки, а также освободили город Киев. Сражение за Днепр стало одним из самых кровопролитных - по разным оценкам, число потерь с обеих сторон (с учётом убитых и раненых) составило от 1,7 млн до 2,7 млн. """,
                          style: GoogleFonts.philosopher(
                            textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    )

                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 45,
            right: 20,
            child: Center(
              child: Container(
                width: 650,
                height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Image.asset(
                        "assets/history/11.png",
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
