import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';


import 'HomeScreen.dart';

class Herospage extends StatefulWidget {
  const Herospage({Key? key}) : super(key: key);

  @override
  State<Herospage> createState() => _HerospageState();
}

class _HerospageState extends State<Herospage> {
  late VideoPlayerController _controller;


  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.file(
      File('assets/video/video1.mp4'), // Fayl manzilini o'zgartiring
    )..initialize().then((_) {
      setState(() {});
    });
  }
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

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
              padding: const EdgeInsets.only(top: 50.0, right: 81),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Герои Советского Союза',
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
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: GridView.builder(
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 4.0, // Reduce crossAxisSpacing
                              mainAxisSpacing: 4.0, // Reduce mainAxisSpacing
                              childAspectRatio: (MediaQuery.of(context).size.width / 0.2) /
                                  (MediaQuery.of(context).size.height / 0.2),
                            ),
                            shrinkWrap: true,
                            physics: const ClampingScrollPhysics(),
                            itemCount: 9,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation, secondaryAnimation) => HomeScreen(),
                                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                        var begin = Offset(1.0, 0.0);
                                        var end = Offset.zero;
                                        var curve = Curves.ease;

                                        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                                        var offsetAnimation = animation.drive(tween);

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
                                      "assets/Men/${index+1}.png",
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Expanded(child: Container(
                        padding: EdgeInsets.all(20.0),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text(
                                """" Посконкин Александр Романович родился 7 января 1919 года в селе Коптево Рассказовского района. Учился и работал в рабочем посёлке «Красный боевик» (г. Котовск).

В Красную Армию был призван в 1939 году. Участвовал в белофинской войне (1939-1940 гг.) в составе особого лыжного отряда моряков Балтийского флота, выполняя ответственные задания по разведке.

В одном рукопашном бою уничтожил несколько противников, спас командира и доставил ценные сведения об обороне противника. За мужество и отвагу, проявленные в ходе боевых операций, А.Р. Посконкину 21 апреля 1940 года было присвоено звание Героя Советского Союза с вручением ордена Ленина и медали «Золотая Звезда» - первому из рядовых бойцов Красной Армии.

Отважно воевал наш земляк и на фронтах Великой Отечественной войны: защищал Ленинград, освобождал Украину, Западную Европу.

Александра Посконкина, чья гармонь хранится в коллекции музея, после 1942 года назначили помощником командира батареи на одном из кронштадтских фортов, которые были огневым щитом Ленинграда. Их орудия защищали подступы к городу и Неве во время обороны и позже - во время блокады.

О храбрости и мужестве свидетельствуют его боевые награды: орден Отечественной войны II степени, два ордена Красной Звезды и другие ордена и медали.

В 1956 году майор Посконкин вернулся в г. Котовск, работал на заводах «Пластмасс», «Алмаз». Среди горожан пользовался большим авторитетом, часто выступал перед молодёжью с рассказами о своей фронтовой жизни, о товарищах по оружию. Его именем названа одна из улиц нашего города.

Александр Твардовский несколько раз встречался с
Посконкиным. Именно его подвиг лег в основу главы «О герое» в поэме «Василий Теркин»:


Аж привстал герой,
- Ну что вы, 
Что вы, - вскинул головой, - 
Я как раз из-под Тамбова, - 
И потрогал орден свой. """
                              ),
                              Center(
                                child: _controller.value.isInitialized
                                    ? AspectRatio(
                                  aspectRatio: _controller.value.aspectRatio,
                                  child: VideoPlayer(_controller),
                                )
                                    : CircularProgressIndicator(),
                              ),





                            ],
                          ),

                        ),
                        height: 650,
                        color: Color(0xfff6fdc7),

                      )
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              if (_controller.value.isPlaying) {
                _controller.pause();
              } else {
                _controller.play();
              }
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ),
    );
  }
}

  





