import 'package:colorchanger_using_provider/Controller/color_changer_controller.dart';
import 'package:colorchanger_using_provider/View/Home%20Screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>ColorChangerController(),
      child: MaterialApp(
        home: HomeScreen(),
      ),);
  }
}
