import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kotovsk/models/news_model.dart';
import 'package:kotovsk/modul/pages/warcity_page.dart';

class WhiteRobePage extends StatefulWidget {
  const WhiteRobePage ({super.key});

  @override
  State<WhiteRobePage> createState() => _HeadingPageState();
}

class _HeadingPageState extends State<WhiteRobePage> {
  TextEditingController _descriptionController = TextEditingController();
  late int newsId;

  late int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _descriptionController.text = """
   С первых дней войны Тамбовская область становится одной из крупнейших госпитальных баз в нашей стране. 
В городах и сёлах было развернуто 45 госпиталей. 

Через госпитали Тамбовщины прошло 226 тысяч раненых солдат и офицеров. Возврат в строй раненых было около 80 %. Этот итог, которым могут гордиться тамбовские медики, был достигнут ценой огромных усилий врачей, медицинских сестёр и нянь.

В городе Котовске с начала войны были размещены два военных эвакогоспиталя № 1980 во Дворце культуры и № 1393 – в школе № 1. В 1943 – 1945 годах эвакогоспиталь № 5954 во Дворце культуры и № 5901 – в школе № 1, где лечили и проходили реабилитацию солдаты с тяжёлыми ранениями. 

Большую помощь медицинским работникам госпиталей оказывали предприятия и учреждения, а также население города. Жители готовили помещения для развёртывания госпиталей, разгружали эшелоны с ранеными, безвозмездно сдавали кровь, писали письма родным раненых, давали концерты в больничных палатах. Во время войны в госпиталях главными врачами работали Л.М. Ломакина, Ф.У. Повторев, главными хирургами – И.В. Щуркин, В.А. Поляков.
    """;
    newsId = 0; //bu joyda localstorigeda saqlangan idni berib yuborish kk va
  }

  @override
  void dispose() {
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Index of the selected image

    List<News> newsList = [
      News(id: 1, title: "title", description: "description", imgs: [
        "https://picsum.photos/id/1/200/300",
        "https://picsum.photos/id/2/200/300",
        "https://picsum.photos/id/3/200/300",
        "https://picsum.photos/id/4/200/300",
        "https://picsum.photos/id/5/200/300",
        "https://picsum.photos/id/6/200/300",
        "https://picsum.photos/id/7/200/300",
        "https://picsum.photos/id/8/200/300",
        "https://picsum.photos/id/9/200/300",
        "https://picsum.photos/id/10/200/300",
        "https://picsum.photos/id/11/200/300",
        "https://picsum.photos/id/12/200/300",
        "https://picsum.photos/id/13/200/300",
        "https://picsum.photos/id/14/200/300",
      ]), //network orqali
    ];


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
                  'Подвиг людей в белых халатах',
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
                padding: const EdgeInsets.only(top: 135.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 81),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Container(
                                  color: Color(0xFFF6FDC7),
                                  child: Column(children: [
                                    TextField(
                                      controller: _descriptionController,
                                      onChanged: (value) {},
                                      keyboardType: TextInputType.text,
                                      // obscureText: true,

                                      textAlign: TextAlign.left,
                                      style: const TextStyle(color: Colors.black),
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
                                        hintStyle: TextStyle(
                                            fontSize: 20.0, color: Colors.black),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFFDBBB69), width: 5),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFDBBB69),
                                            width: 5,
                                          ),
                                        ),
                                      ),
                                      textInputAction: TextInputAction.done,
                                      maxLines: 18,
                                    ),
                                  ]),
                                )),
                            const SizedBox(
                              width: 55,
                            ),
                            // ? Right expended
                            Expanded(
                                child: Container(
                                  // color: Colors.orange,
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.s,
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: [

                                        Container(
                                          height: 380,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(4.0),
                                            ),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(4),
                                              child: FadeInImage.assetNetwork(
                                                placeholder:
                                                "assets/images/loading.gif",
                                                image: newsList[newsId]
                                                    .imgs[selectedIndex],
                                                placeholderFit: BoxFit.fill,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 34,
                                        ),
                                        Container(
                                          height: 70.0,
                                          child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            padding: EdgeInsets.symmetric(vertical: 5),
                                            itemCount: newsList[newsId].imgs.length,
                                            itemBuilder: (context, index) {
                                              return GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    // Update the selected index
                                                    selectedIndex = index;
                                                    print(newsList[newsId]
                                                        .imgs[selectedIndex]);
                                                  });
                                                },
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      width: 88.0,
                                                      height: 67.0,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.circular(4.0),
                                                        border: Border.all(
                                                          // color: index != selectedIndex
                                                          //     ? Colors.blue
                                                          //     : Colors.red,
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                        BorderRadius.circular(4),
                                                        child: FadeInImage.assetNetwork(
                                                          placeholder:
                                                          'assets/images/loading.gif',
                                                          image: newsList[newsId]
                                                              .imgs[index],
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(width: 15),
                                                  ],
                                                ),

                                              );
                                            },
                                          ),
                                        )
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
                right: 76,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  CityPage(),
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
                    'назад',
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

