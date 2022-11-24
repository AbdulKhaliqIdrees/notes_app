import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/icons_for_bottom_navigationbar.dart';

class BotomNavigationBar extends StatelessWidget {
  const BotomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffFFFFFF),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconsForBottomNavigationBar(Icons.home_outlined, "Home", 0),
          IconsForBottomNavigationBar(Icons.favorite_border, "Favourites", 1),
          IconsForBottomNavigationBar(
              Icons.star_border_outlined, "Catogeries", 2),
          IconsForBottomNavigationBar(CupertinoIcons.search, "Search", 3),
        ],
      ),
    );
  }
}
