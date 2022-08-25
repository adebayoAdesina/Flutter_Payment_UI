import 'package:flutter/material.dart';
import 'package:payment_app/screen/home_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  HomeScreen.id : (context)=> const HomeScreen()
};