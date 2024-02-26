import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kotovsk/models/girls_model.dart';
import 'package:carousel_slider/carousel_slider.dart';


final List<GirlsModel> imgList = [
  GirlsModel(name: "Парк  Воинской Славы", imgUrl: "assets/images/news1.png"),
  GirlsModel(name: "Обелиск Октябрьский", imgUrl: "assets/images/news2.png"),
  GirlsModel(name: "Парк  Воинской Славы", imgUrl: "assets/images/news1.png"),
  GirlsModel(name: "Обелиск Октябрьский", imgUrl: "assets/images/news2.png"),
];

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  final CarouselController _controller = CarouselController();
  int _current = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Index of the selected image
    double width = MediaQuery.of(context).size.width;
    double rightWidth = width * 0.6 - 60;
    double height = MediaQuery.of(context).size.height;

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
    padding: const EdgeInsets.only(left: 81.0, top: 50),
    child: Text(
    'Памятные места',
    style: GoogleFonts.philosopher(
    textStyle: const TextStyle(
    fontSize: 35,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.italic,
    color: Colors.white,
    ),
    ),
    ),
    ),
    Padding(
    padding: const EdgeInsets.only(
    top: 135.0,
    left: 81,
    ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Container(
    width: width * 0.35,
    height: height - 155,
    padding: const EdgeInsets.all(30),
    decoration: const BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(5)),
    color: Color(0xFFF6FDC7),
    ),
    child: const SingleChildScrollView(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    "Город в солдатской шинели ",
    style: TextStyle(fontSize: 28, color: Colors.black),
    ),
    Text(
    "Тамара Асафьева ",
    style: TextStyle(
    fontSize: 24, color: Color(0xFF1E1E1E)),
    ),
    Text(
    """

 Стройные сосны
Над Цною парят,
Машут ладошками ели,
Будто покой и уют твои хранят,
Город в солдатской шинели.

Порох стране
Ты в войну выдавал.
Бомбы в завод твой летели.
Ты никогда, никогда не снимал
Серой солдатской шинели.

В пламени гибли
Девчата с "пластмасс",
Ярко и страшно горели.
Подвиг их равен отваге солдат
В серой солдатской шинели.

Их, молодых,
Весь Котовск провожал,
Залпы салюта гремели.
Честь им воздали,
Как павшим в бою
Тем, кто в солдатской шинели.

Город оружье
Победы ковал,
Славу в ,стихах ему пели,
Что как солдат,
Был достоин всегда
Серой военной шинели.


Стройные сосны
Над Цною парят,
Машут ладошками ели,
Будто покой и уют твой хранят,
Город в солдатской шинели.
                              """,
    style: TextStyle(
    fontSize: 18, color: Color(0xFF1E1E1E)),
    ),
    ],
    ),
    ),
    ),
    const SizedBox(
    width: 55,
    ),
    SingleChildScrollView(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Container(
    width: (width * 0.6 - 60),
    height: height / 2 - 30,
    child: CarouselSlider.builder(
    options: CarouselOptions(
    aspectRatio: 2.0,
    // enlargeCenterPage: false,
    autoPlay: true,
    enableInfiniteScroll: true,
    autoPlayInterval: const Duration(seconds: 5),
    autoPlayAnimationDuration:
    const Duration(milliseconds: 1200),
    viewportFraction: 0.9,
    enlargeCenterPage: true,
    onPageChanged: (index, reason) {
    setState(() {
    _current = index;
    });
    },
    ),
    carouselController: _controller,
    itemCount: (imgList.length / 2).round(),
    itemBuilder: (context, index, realIdx) {
    final int first = index * 2;
    final int second = first + 1;
    return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [first, second].map((idx) {
    return Expanded(
    flex: 1,
    child: Column(
    children: [
    Padding(
    padding:
    const EdgeInsets.only(left: 50),
    child: Column(
    children: [
    const SizedBox(
    height: 15,
    ),
    ClipRRect(
    borderRadius:
    const BorderRadius.all(
    Radius.circular(8)),
    child: Image.asset(
    imgList[idx].imgUrl,
    height: height / 2 - 100,
    width: 500,
    fit: BoxFit.fill,
    ),
    ),
    ListTile(
    title: Text(
    imgList[idx].name,
    style: const TextStyle(
    fontSize: 16,
    color: Colors.white),

    textAlign: TextAlign.center,
    ),
    ),
    ],
    ),
    ),
    ],
    ),
    );
    }).toList(),
    );
    },
    ),
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    mainAxisSize: MainAxisSize.max,
    children: <Widget>[
    ...Iterable<int>.generate(
    (imgList.length / 2).ceil())
        .map((int pageIndex) => GestureDetector(
    onTap: () => {
    _controller.animateToPage(pageIndex),
    _current = pageIndex
    },
    child: Container(
    width: (width * 0.5 - 60) /
    ((imgList.length / 2).ceil()) -
    108,
    height: 12.0,
    margin: const EdgeInsets.symmetric(
    vertical: 8.0, horizontal: 2.0),
    decoration: BoxDecoration(
    shape: BoxShape.rectangle,
    color:
    (Theme.of(context).brightness ==
    Brightness.dark
    ? Colors.white
        : Color(0xFFFEF6CC))
        .withOpacity(
    _current == pageIndex
    ? 0.9
        : 0.4)),
    ),
    )),
    SizedBox(
    width: width * 0.1,
    ),
    IconButton(
    color: Colors.grey,
    onPressed: () => _controller.previousPage(),
    icon: const Icon(
    Icons.arrow_back,
    color: Colors.white,
    )),
    IconButton(
    color: Colors.grey,
    onPressed: () => _controller.nextPage(),
    icon: const Icon(
    Icons.arrow_forward,
    color: Colors.white,
    )),
    ],
    ),
    Container(
    width: rightWidth,
    padding: const EdgeInsets.only(
    right: 30, top: 10, bottom: 20),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Container(
    width: rightWidth / 4 - 30,
    height: 90,
    padding: const EdgeInsets.symmetric(
    horizontal: 5, vertical: 10),

    decoration: BoxDecoration(
    color: const Color(0xFFF6FDC7),
    border: Border.all(
    width: 3,
    color: const Color(0xFFD2B465),
    ),
    borderRadius: const BorderRadius.all(
    Radius.circular(3))),
    child: const Center(
    child: Text(
    "Парк Воинской Славы",
    style: TextStyle(
    color: Color(0xFF0D4121),
    fontSize: 18,
    fontWeight: FontWeight.w700),
    ),
    ),
    ),
    Container(
    width: rightWidth / 4 - 30,
    height: 90,
    padding: const EdgeInsets.symmetric(
    horizontal: 5, vertical: 10),
    decoration: BoxDecoration(
    color: const Color(0xFFF6FDC7),
    border: Border.all(
    width: 3,
    color: const Color(0xFFD2B465),
    ),
    borderRadius: const BorderRadius.all(
    Radius.circular(3))),
    child: const Center(
    child: Text(
    "Бюст Г. И. Котовского",
    style: TextStyle(
    color: Color(0xFF0D4121),
    fontSize: 18,
    fontWeight: FontWeight.w700),
    ),
    ),
    ),
    Container(
    width: rightWidth / 4 - 30,
    height: 90,
    padding: const EdgeInsets.symmetric(
    horizontal: 5, vertical: 10),
    decoration: BoxDecoration(
    color: const Color(0xFFF6FDC7),
    border: Border.all(
    width: 3,
    color: const Color(0xFFD2B465),
    ),
    borderRadius: const BorderRadius.all(
    Radius.circular(3))),
    child: const Center(
    child: Text(
    "Октябрьский сквер",
    style: TextStyle(
    color: Color(0xFF0D4121),
    fontSize: 18,
    fontWeight: FontWeight.w700),
    ),
    ),
    ),
    Container(
    width: rightWidth / 4 - 30,
    height: 90,
    padding: const EdgeInsets.symmetric(
    horizontal: 5, vertical: 10),
    decoration: BoxDecoration(
    color: const Color(0xFFF6FDC7),
    border: Border.all(
    width: 3,
    color: const Color(0xFFD2B465),

    ),
    borderRadius: const BorderRadius.all(
    Radius.circular(3))),
    child: const Center(
    child: Text(
    "Здание фурштадта",
    style: TextStyle(
    color: Color(0xFF0D4121),
    fontSize: 18,
    fontWeight: FontWeight.w700),
    ),
    ),
    ),
    ],
    ),
    ),
    Container(
    width: rightWidth,
    padding: const EdgeInsets.only(right: 30, top: 20),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Container(
    width: rightWidth / 3 - 30,
    height: 90,
    padding: const EdgeInsets.symmetric(
    horizontal: 15, vertical: 10),
    decoration: BoxDecoration(
    color: const Color(0xFFF6FDC7),
    border: Border.all(
    width: 3,
    color: const Color(0xFFD2B465),
    ),
    borderRadius: const BorderRadius.all(
    Radius.circular(3))),
    child: const Center(
    child: Text(
    """Мемориальный комплекс к 90-летию завода""",
    style: TextStyle(
    color: Color(0xFF0D4121),
    fontSize: 18,
    fontWeight: FontWeight.w700,
    ),
    textAlign: TextAlign.center,
    ),
    ),
    ),
    Container(
    width: rightWidth / 3 - 30,
    height: 90,
    padding: const EdgeInsets.symmetric(
    horizontal: 15, vertical: 10),
    decoration: BoxDecoration(
    color: const Color(0xFFF6FDC7),
    border: Border.all(
    width: 3,
    color: const Color(0xFFD2B465),
    ),
    borderRadius: const BorderRadius.all(
    Radius.circular(3))),
    child: const Center(
    child: Text(
    """Городская скульптура «Эволюция»""",
    style: TextStyle(
    color: Color(0xFF0D4121),
    fontSize: 18,
    fontWeight: FontWeight.w700,
    ),
    textAlign: TextAlign.center,
    ),
    ),
    ),
    Container(
    width: rightWidth / 3 - 30,
    height: 90,
    padding: const EdgeInsets.symmetric(

        horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
          color: const Color(0xFFF6FDC7),
          border: Border.all(
            width: 3,
            color: const Color(0xFFD2B465),
          ),
          borderRadius: const BorderRadius.all(
              Radius.circular(3))),
      child: const Center(
        child: Text(
          """Мемориальный комплекс воинам - интернациолистам""",
          style: TextStyle(
            color: Color(0xFF0D4121),
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ),
    ],
    ),
    ),
    ],
    ),
    )
    ]),
    ),

          // header buttons

          Positioned(
            top: 58,
            right: 76,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(219, 187, 105, 1.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 10)),
              child: Text(
                'Назад',
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
