import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_app/controllers/master_controller.dart';
import 'package:notes_app/screens/categories_screen.dart';
import 'package:notes_app/screens/favourites_screen.dart';
import 'package:notes_app/screens/home_screen.dart';
import 'package:notes_app/screens/search_screen.dart';
import 'package:notes_app/screens/side_bar.dart';

class ChromeBody extends StatelessWidget {
  ChromeBody({Key? key}) : super(key: key);
  final mastercontroller = Get.find<MasterController>();
  final screens = [
    HomeScreen(),
    FavouriteScreen(),
    CategoriesScreen(),
    SearchScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SideBar(),
          Obx(() => Expanded(child: screens[mastercontroller.index.value])),
        ],
      ),
    );
  }
}
