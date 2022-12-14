import 'package:flutter/material.dart';
import 'package:payment_app/constants/color.dart';
import 'package:payment_app/route/routes.dart';
import 'package:payment_app/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor
      ),
      initialRoute: HomeScreen.id,
      routes: routes,
    );
  }
}

