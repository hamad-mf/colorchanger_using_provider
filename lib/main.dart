import 'package:colorchanger_using_provider/Controller/color_changer_controller.dart';
import 'package:colorchanger_using_provider/Controller/login_sscreen_controller.dart';
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ColorChangerController(),),
        ChangeNotifierProvider(create: (context) => LoginSscreenController(),),
      ],
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
