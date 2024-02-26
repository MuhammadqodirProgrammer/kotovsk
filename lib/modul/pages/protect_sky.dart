import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kotovsk/models/girls_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:kotovsk/modul/pages/war_page.dart';


final List<GirlsModel> imgList = [
  GirlsModel(name: "Любовь Нафанаиловна Быстрицкая (Чумичёва)", imgUrl:"assets/girls/1.png" ),
  GirlsModel(name: "Сазонова Зоя Николаевна", imgUrl:"assets/girls/2.png" ),
  GirlsModel(name: "Любовь Нафанаиловна Быстрицкая (Чумичёва)", imgUrl:"assets/girls/3.png" ),
  GirlsModel(name: "Сазонова Зоя Николаевна", imgUrl:"assets/girls/4.png" ),
  GirlsModel(name: "Любовь Нафанаиловна Быстрицкая (Чумичёва)", imgUrl:"assets/girls/5.png" ),
  GirlsModel(name: "Сазонова Зоя Николаевна", imgUrl:"assets/girls/6.png" ),
  GirlsModel(name: "Любовь Нафанаиловна Быстрицкая (Чумичёва)", imgUrl:"assets/girls/1.png" ),
  GirlsModel(name: "Сазонова Зоя Николаевна", imgUrl:"assets/girls/2.png" ),



];

class ProtectSkyPage extends StatefulWidget {
  const ProtectSkyPage({super.key});

  @override
  State<ProtectSkyPage> createState() => _TestPageState();
}

class _TestPageState extends State<ProtectSkyPage> {
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
    'Они защищали небо',
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
    child:  const SingleChildScrollView(
    child: Text(
    """ С первых дней войны Тамбовская область становится одной из крупнейших госпитальных баз в нашей стране.
В городах и сёлах было развернуто 45 госпиталей.

Через госпитали Тамбовщины прошло 226 тысяч раненых солдат и офицеров. Возврат в строй раненых было около 80 %. Этот итог, которым могут гордиться тамбовские медики, был достигнут ценой огромных усилий врачей, медицинских сестёр и нянь.


В городе Котовске с начала войны были размещены два военных эвакогоспиталя № 1980 во Дворце культуры и № 1393 – в школе № 1. В 1943 – 1945 годах эвакогоспиталь № 5954 во Дворце культуры и № 5901 – в школе № 1, где лечили и проходили реабилитацию солдаты с тяжёлыми ранениями.

Большую помощь медицинским работникам госпиталей оказывали предприятия и учреждения, а также население города. Жители готовили помещения для развёртывания госпиталей, разгружали эшелоны с ранеными, безвозмездно сдавали кровь, писали письма родным раненых, давали концерты в больничных палатах. Во время войны в госпиталях главными врачами работали Л.М. Ломакина, Ф.У. Повторев, главными хирургами – И.В. Щуркин, В.А. Поляков.""",
    style:
    TextStyle(fontSize: 18, color: Color(0xFF1E1E1E)),
    ),

    ),
    ),
    const SizedBox(
    width: 55,
    ),
    Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Container(
    width: (width * 0.6 - 60),
    height: height - 185,
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
    itemCount: (imgList.length / 3).round(),
    itemBuilder: (context, index, realIdx) {
    final int first = index * 2;
    final int second = first + 1;
    final int third = first + 2;
    return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [first, second, third].map((idx) {
    return Expanded(
    flex: 1,
    child: Column(
    children: [
    Column(
    children: [
    SizedBox(height: 15,),
    ClipRRect(
    borderRadius: const BorderRadius.all(Radius.circular(8)),
    child: Image.asset(
    imgList[idx].imgUrl,
    height: 220,
    fit: BoxFit.fill,
    ),
    ),
    ListTile(
    title:  Text(
    imgList[idx].name,
    style:const TextStyle(fontSize: 16 ,color: Colors.white),
    textAlign: TextAlign.center,
    ),


    ),
    ],
    ),
    Column(
    children: [
    SizedBox(height: 15,),
    ClipRRect(
    borderRadius: const BorderRadius.all(Radius.circular(8)),
    child: Image.asset(
    imgList[idx + 1].imgUrl,
    height: 220,
    fit: BoxFit.fill,
    ),
    ),
    ListTile(
    title:  Text(
    imgList[idx].name,
    style:const TextStyle(fontSize: 16 ,color: Colors.white),
    textAlign: TextAlign.center,

    ),


    ),
    ],
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
    ...Iterable<int>.generate((imgList.length / 3).ceil())
        .map((int pageIndex) => GestureDetector(
    onTap: () => {
    _controller.animateToPage(pageIndex),
    _current = pageIndex
    },
    child: Container(
    width: (width * 0.6 - 60) /
    ((imgList.length / 3).ceil()) -
    108,
    height: 12.0,
    margin: const EdgeInsets.symmetric(
    vertical: 8.0, horizontal: 2.0),
    decoration: BoxDecoration(
    shape: BoxShape.rectangle,
    color: (Theme.of(context)
        .brightness ==
    Brightness.dark
    ? Colors.white
        : Color(0xFFFEF6CC))
        .withOpacity(_current == pageIndex
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
    ],
    )
    ]),
    ),

          // header buttons

          Positioned(
            top: 58,
            right: 76,
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
