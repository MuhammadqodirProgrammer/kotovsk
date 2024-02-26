import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SportPage extends StatefulWidget {

  @override
  State<SportPage> createState() => _SportPageState();
}

class _SportPageState extends State<SportPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        child: Stack(
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
              padding: const EdgeInsets.only(left: 81.0, top: 30),
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
            Positioned(
              top: 30,
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
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 10)),
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
            Padding(
              padding: EdgeInsets.only(top: 105, left: 80, right: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TabBar(
                    unselectedLabelColor: Colors.white,
                    labelColor: Colors.orange,
                    indicatorColor: const Color(0xFFF6FDC7),
                    dividerColor: Colors.transparent,
                    tabs: const [
                      Tab(
                        text: 'Дворец культуры',
                      ),
                      Tab(
                        text: """
                            Централизованная библиотечная
                            система города Котовска
                            """,
                      ),
                      Tab(
                        text: '''
                        Музей истории
                        города Котовска
                                 ''',
                      ),
                    ],
                    controller: _tabController,
                    indicatorSize: TabBarIndicatorSize.tab,
                  ),
                  Expanded(

                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Image.asset(
                              "assets/culture/S1.jpg",
                              width: screenWidth - 170,
                              height: screenHeight - 180,
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Image.asset(
                              "assets/culture/S2.jpg",
                              width: screenWidth - 170,
                              height: screenHeight - 180,
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Image.asset(
                              "assets/culture/S3.jpg",
                              width: screenWidth - 170,
                              height: screenHeight - 180,
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
