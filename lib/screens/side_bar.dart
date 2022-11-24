import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/icons_for_sidebar.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
      ),
      child: Padding(
        padding: EdgeInsets.only(right: 90, bottom: 175, top: 40),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconsForSideBar(Icons.home_outlined, "Home", 0),
                  SizedBox(
                    height: 40,
                  ),
                  IconsForSideBar(Icons.favorite_border, "Favourites", 1),
                  SizedBox(
                    height: 40,
                  ),
                  IconsForSideBar(Icons.star_border_outlined, "Catogeries", 2),
                  SizedBox(
                    height: 40,
                  ),
                  IconsForSideBar(CupertinoIcons.search, "Search", 3),
                  SizedBox(
                    height: 160,
                  ),
                  Text(
                    "Designed by:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Abdul Khaliq",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
