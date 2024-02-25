// import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kotovsk/repositories/user_repository.dart';
import 'package:video_player/video_player.dart';





class Herospage extends StatefulWidget {
  const Herospage({Key? key}) : super(key: key);

  @override
  State<Herospage> createState() => _HerospageState();
}

class _HerospageState extends State<Herospage> {
  late VideoPlayerController _controller;


  late  int Activeindex=0;


  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/video/video.mp4');
    _controller.addListener(() {
      setState(() {});
    });
    _controller.initialize().then((value){
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

                  SingleChildScrollView(
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: GridView.builder(
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 20.0, // Reduce crossAxisSpacing
                                mainAxisSpacing: 12.0,
                                childAspectRatio: (MediaQuery.of(context).size.width * 0.47) /
                                    (MediaQuery.of(context).size.height * 0.85),
                              ),
                              shrinkWrap: true,
                              physics: const ClampingScrollPhysics(),
                              itemCount: 9,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: (){
                                    print(index);
                                    setState(() {
                                      Activeindex=index;
                                    });
                                  },
                                    child: Container(
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20.0),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(5),
                                        child: Image.asset(
                                          "assets/Men/${index+1}.png",
                                          fit: BoxFit.fill,
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
                                  """"${UserData[Activeindex].description}""",
                                  style:
                                  TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.black,
                                  ),

                                ),
                                SizedBox(height: 50,),
                                UserData[Activeindex].video != null ? Container(
                                  width: 300,
                                  child: Center(
                                    child: _controller.value.isInitialized
                                        ? AspectRatio(
                                      aspectRatio: _controller.value.aspectRatio,
                                      child: VideoPlayer(_controller),
                                    )
                                        : CircularProgressIndicator(),
                                  ),
                                ):Text('')
                              ],
                            ),

                          ),
                          height: 590,
                          color: Color(0xfff6fdc7),

                        )
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),

        floatingActionButton: UserData[Activeindex].video != null ? FloatingActionButton(
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
        ):null,

      ),

    );
  }
}







