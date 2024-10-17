import 'package:colorchanger_using_provider/Controller/color_changer_controller.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.watch<ColorChangerController>().currentColor,
      body: Center(
        child: ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 30),
            itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    context
                        .read<ColorChangerController>()
                        .updateColor(ColorChangerController.colors[index]);
                  
                  
                  
                  },
                  child: Container(
                    color: ColorChangerController.colors[index],
                    height: 80,
                  ),
                ),
            separatorBuilder: (context, index) => SizedBox(
              height: 20,
            ),
            itemCount: 5),
      ),
    );
  }
}
