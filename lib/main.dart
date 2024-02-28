import 'package:flutter/material.dart';
import 'package:kotovsk/routes.dart';
import 'package:turn_page_transition/turn_page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final routes = Routes.routes();

    return MaterialApp.router(
      routerConfig: routes,
      title: 'TurnPageTransition Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        pageTransitionsTheme: const TurnPageTransitionsTheme(
          overleafColor: Colors.grey,
          animationTransitionPoint: 0.5,
        ),
        primarySwatch: Colors.blue,
      ),
      // routeInformationParser: routes.routeInformationParser,
      // routerDelegate: routes.routerDelegate,
    );
  }
}
