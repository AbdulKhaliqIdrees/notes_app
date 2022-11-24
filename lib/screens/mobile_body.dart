import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_app/controllers/master_controller.dart';
import 'package:notes_app/screens/bottom_navigationbar.dart';
import 'package:notes_app/screens/categories_screen.dart';
import 'package:notes_app/screens/favourites_screen.dart';
import 'package:notes_app/screens/home_screen.dart';
import 'package:notes_app/screens/search_screen.dart';

class MobileBody extends StatelessWidget {
  MobileBody({Key? key}) : super(key: key);
  final mastercontroller = Get.find<MasterController>();
  final screens = [
    HomeScreen(),
    FavouriteScreen(),
    CategoriesScreen(),
    SearchScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Expanded(
            child: SingleChildScrollView(
                child: screens[mastercontroller.index.value]))),
        BotomNavigationBar(),
      ],
    );
  }
}
