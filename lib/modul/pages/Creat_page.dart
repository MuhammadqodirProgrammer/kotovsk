import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kotovsk/modul/pages/Heading_sceen.dart';


class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {




  @override
  Widget build(BuildContext context) {
    double screenWidth =MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
      body: Stack(
      children: [
      Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.cover,
        ),
      ),
    ),
    Padding(
    padding: const EdgeInsets.only(top: 135.0),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Padding(
    padding:const  EdgeInsets.symmetric(horizontal: 81),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Expanded(
    child: Container(
    // color: Colors.teal,
    child: Column(children: [
    TextField(
    onChanged: (value) {},
    keyboardType: TextInputType.text,
    // obscureText: true,
    textAlign: TextAlign.left,
    style: const TextStyle(color: Colors.white),
    decoration: const InputDecoration(
    hintText: 'Заголовок новости',
    contentPadding: EdgeInsets.all(28),
    border: OutlineInputBorder(
    borderSide: BorderSide(
    color: Color(0xFFDBBB69),
    width: 5,
    ),
    ),
    hintStyle:
    TextStyle(fontSize: 20.0, color: Colors.white),
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFDBBB69) ,
    width: 5
    ),
    ),
    focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFDBBB69) ,
    width: 5,
    ),
    ),
    ),
    textInputAction: TextInputAction.done,
    // maxLines: 1,
    ),
    const  SizedBox(height: 36),


      TextField(
        onChanged: (value) {},
        keyboardType: TextInputType.text,
        // obscureText: true,
        textAlign: TextAlign.left,
        style: const TextStyle(color: Colors.white),
        decoration: const InputDecoration(
          isDense: true,
          hintText: 'Описание новости',
          contentPadding: EdgeInsets.all(28),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFDBBB69),
              width: 5,
            ),
          ),
          hintStyle:
          TextStyle(fontSize: 20.0, color: Colors.white),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFDBBB69) ,
                width: 5
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFDBBB69) ,
              width: 5,
            ),
          ),
        ),
        textInputAction: TextInputAction.done,
        maxLines: 13,
      ),
    ]),
    )),
        const  SizedBox(
          width: 55,
        ),
        // ? Right expended
        Expanded(
        child: Container(
        // color: Colors.orange,
        child:  Column(
        // mainAxisAlignment: MainAxisAlignment.s,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

        ElevatedButton(
        onPressed: () {
      print(context);
    },
    style: ElevatedButton.styleFrom(
    backgroundColor: const Color(0xFFF6FDC7),


    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
    side: const BorderSide(color: Color(0xFFDBBB69), width: 2), // Border qo'shish
    ),
    minimumSize:Size(screenWidth/2 , 85) ,
    maximumSize: Size(screenWidth/2, 85) ,
    padding:
    const EdgeInsets.symmetric(vertical: 13, horizontal: 10)),
    child: Text(
    'Добавить фото ',
    style: GoogleFonts.philosopher(
    textStyle: const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.italic,
    color: Colors.black,
    ),
    ),
    ),
    ),
    const  SizedBox(height: 27,),



    Container(
    height: 260,
    child:  GridView.builder(
    gridDelegate:
    const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 6,
    crossAxisSpacing: 10.0,
    childAspectRatio: 1.5,
    mainAxisSpacing: 10.0,
    ),
    shrinkWrap: true,
    physics: const ClampingScrollPhysics(),
    itemCount: 15,
    itemBuilder: (context, index) {
    return GestureDetector(
    onTap: () {
    Navigator.push(
    context,
    PageRouteBuilder(
    pageBuilder: (context, animation,
    secondaryAnimation) =>
    const Icon(Icons.person),
    transitionsBuilder: (context, animation,
    secondaryAnimation, child) {
    var begin = const Offset(1.0, 0.0);
    var end = Offset.zero;
    var curve = Curves.ease;

    var tween = Tween(begin: begin, end: end)
        .chain(CurveTween(curve: curve));
    var offsetAnimation =
    animation.drive(tween);


    return SlideTransition(
    position: offsetAnimation,
    child: child,
    );
    },
    ),
    );
    },
    child: Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20.0),
    ),
    child: ClipRRect(
    borderRadius: BorderRadius.circular(5),
    child: Image.asset(
    "assets/images/${index + 1}.png",
    fit: BoxFit.cover,
    ),
    ),
    ),
    );
    },
    ),
    ),
    const SizedBox(height: 30,),
    ElevatedButton(
    onPressed: () {
    print(context);
    },
    style: ElevatedButton.styleFrom(
    backgroundColor: const Color(0xFFF6FDC7),

    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
    side: const BorderSide(color: Color(0xFFDBBB69), width: 2), // Border qo'shish
    ),
    minimumSize:Size(screenWidth/2 , 85) ,
    maximumSize: Size(screenWidth/2, 85) ,
    padding:
    const EdgeInsets.symmetric(vertical: 13, horizontal: 10)),
    child: Text(
    'Выбрать как обложку ',
    style: GoogleFonts.philosopher(
    textStyle: const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.italic,
    color: Colors.black,
    ),
    ),
    ),
    )

    ,
    ]),
    )),
    ]),
    ),
    ],
    ),
    ),


        // header buttons
        Positioned(
          top: 58,
          left: 81,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HeadingPage(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(219, 187, 105, 1.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding:
                const EdgeInsets.symmetric(vertical: 15, horizontal: 10)),
            child: Text(
              'Выйти без добавления',
              style: GoogleFonts.philosopher(
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 58,
          left: 451,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HeadingPage(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(219, 187, 105, 1.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding:
                const EdgeInsets.symmetric(vertical: 15, horizontal: 10)),
            child: Text(
              'Удалить новость',
              style: GoogleFonts.philosopher(
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 58,
          right: 76,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HeadingPage(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(219, 187, 105, 1.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding:
                const EdgeInsets.symmetric(vertical: 15, horizontal: 10)),
            child: Text(
              'Добавить новость',
              style: GoogleFonts.philosopher(
                textStyle: const TextStyle(
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
      ));
  }
}
