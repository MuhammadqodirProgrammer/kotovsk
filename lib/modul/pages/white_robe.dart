// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class WhiteRobePage extends StatelessWidget {
  const WhiteRobePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                      'Подвиг людей в белых халатах',
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
                  // Add your other widgets here
                ],
              ),
            ),
            Positioned(
              top: 130,
              left: 20,
              child: Expanded(child: Container(
                width: 720,
                height: 500,
                padding: EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        """"С первых дней войны Тамбовская область становится одной из крупнейших госпитальных баз в нашей стране. 
В городах и сёлах было развернуто 45 госпиталей. 

Через госпитали Тамбовщины прошло 226 тысяч раненых солдат и офицеров. Возврат в строй раненых было около 80 %. Этот итог, которым могут гордиться тамбовские медики, был достигнут ценой огромных усилий врачей, медицинских сестёр и нянь.

В городе Котовске с начала войны были размещены два военных эвакогоспиталя № 1980 во Дворце культуры и № 1393 – в школе № 1. В 1943 – 1945 годах эвакогоспиталь № 5954 во Дворце культуры и № 5901 – в школе № 1, где лечили и проходили реабилитацию солдаты с тяжёлыми ранениями. 

Большую помощь медицинским работникам госпиталей оказывали предприятия и учреждения, а также население города. Жители готовили помещения для развёртывания госпиталей, разгружали эшелоны с ранеными, безвозмездно сдавали кровь, писали письма родным раненых, давали концерты в больничных палатах. Во время войны в госпиталях главными врачами работали Л.М. Ломакина, Ф.У. Повторев, главными хирургами – И.В. Щуркин, В.А. Поляков.""",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
                        ),

                      ),
                    ],
                  ),

                ),
                color: Color(0xfff6fdc7),

              )
              ),
            )
          ],
        ),
      ),
    );
  }
}
