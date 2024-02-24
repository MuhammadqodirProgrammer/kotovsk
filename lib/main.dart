import 'package:flutter/material.dart';
import 'package:kotovsk/modul/pages/HomeScreen.dart';
import 'package:kotovsk/modul/pages/news_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(), //BU Asosiy bo'lim
      routes: {'/NewsPage': (context) => const NewsPage()},
    );
  }
}
